import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'inference_worker.dart';

/// [LlmInferenceService] manages the lifecycle of the LiteRT LLM engine
/// by proxying requests to a background Isolate (InferenceWorker).
class LlmInferenceService extends ChangeNotifier {
  // Singleton pattern
  static final LlmInferenceService _instance = LlmInferenceService._internal();
  factory LlmInferenceService() => _instance;
  LlmInferenceService._internal();

  Isolate? _workerIsolate;
  SendPort? _workerSendPort;
  final ReceivePort _mainReceivePort = ReceivePort();

  bool _isModelLoaded = false;
  bool get isModelLoaded => _isModelLoaded;

  bool _isModelLoading = false;
  bool get isModelLoading => _isModelLoading;

  bool _isGenerating = false;
  bool get isGenerating => _isGenerating;

  String? _lastError;
  String? get lastError => _lastError;

  String? _lastModelFileName;
  String? _lastPrompt;
  String? _lastPillar;
  bool _isRetryingAfterFallback = false;

  bool _useGpu = true;
  bool get useGpu => _useGpu;

  bool _isOptimizing = false;
  bool get isOptimizing => _isOptimizing;

  bool _safeModeActive = false;
  bool get safeModeActive => _safeModeActive;

  static const String _useGpuKey = "use_gpu_acceleration";
  static const String _crashFlagKey = "model_load_in_progress";

  StreamController<String>? _responseController;

  /// Updates the GPU preference and persists it.
  Future<void> setUseGpu(bool value) async {
    _useGpu = value;
    _safeModeActive = !value;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_useGpuKey, value);
    notifyListeners();
  }

  /// Initializes the service and spawns the background worker Isolate.
  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    
    // Crash Detection or manual override
    if (prefs.getBool(_crashFlagKey) ?? false) {
      debugPrint("[ZiqeXAI] Potential crash detected. Defaulting to CPU mode.");
      _useGpu = false;
      _safeModeActive = true;
      await prefs.setBool(_crashFlagKey, false);
    } else {
      _useGpu = prefs.getBool(_useGpuKey) ?? true;
      _safeModeActive = !_useGpu;
    }

    await _spawnWorker();
  }

  Future<void> _spawnWorker() async {
    _workerIsolate = await Isolate.spawn(inferenceWorkerEntryPoint, _mainReceivePort.sendPort);
    
    // Create a broadcast stream for the receive port to handle multiple listeners if needed
    final broadcastStream = _mainReceivePort.asBroadcastStream();
    
    // The first message from the worker is its SendPort
    _workerSendPort = await broadcastStream.first as SendPort;

    // Listen for subsequent messages from the worker
    broadcastStream.listen((message) {
      if (message is LoadResult) {
        _handleLoadResult(message);
      } else if (message is TokenResponse) {
        _handleTokenResponse(message);
      } else if (message is ErrorResponse) {
        _handleErrorResponse(message);
      }
    });
  }

  void _handleLoadResult(LoadResult result) async {
    if (result.wasWarmup) {
      _handleWarmupResult(result);
      return;
    }

    _isModelLoading = !result.success && _useGpu && _isCompatibilityError(result.error); // Still loading if falling back
    
    if (result.success) {
      if (_useGpu) {
        debugPrint("[ZiqeXAI] Model loaded on GPU. Starting warmup check...");
        _isOptimizing = true;
        _workerSendPort?.send(WarmupCommand());
        notifyListeners();
        return;
      }
      
      _isModelLoaded = true;
      _isModelLoading = false;
      _lastError = null;
      _isOptimizing = false;
      
      if (_isRetryingAfterFallback && _lastPrompt != null) {
        _continueGenerationAfterFallback();
      }
    } else {
      _isModelLoaded = false;
      _isModelLoading = false;
      _lastError = result.error;
      
      if (_useGpu && _isCompatibilityError(result.error)) {
        await _triggerGpuFallback(result.error ?? "Unknown GPU error");
        return;
      }
    }
    
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_crashFlagKey, false);
    notifyListeners();
  }

  void _handleWarmupResult(LoadResult result) async {
    if (result.success) {
      debugPrint("[ZiqeXAI] Warmup successful. GPU is ready.");
      _isModelLoaded = true;
      _isModelLoading = false;
      _isOptimizing = false;
      _lastError = null;

      if (_isRetryingAfterFallback && _lastPrompt != null) {
        _continueGenerationAfterFallback();
      }
    } else {
      debugPrint("[ZiqeXAI] Warmup failed: ${result.error}. Falling back to CPU.");
      await _triggerGpuFallback(result.error ?? "GPU Warmup failed");
      return;
    }

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_crashFlagKey, false);
    notifyListeners();
  }

  void _continueGenerationAfterFallback() {
    debugPrint("[ZiqeXAI] Fallback complete. Auto-retrying generation.");
    _isRetryingAfterFallback = false;
    _isOptimizing = false;
    // Note: We use the existing _responseController to keep the UI stream alive
    generateResponse(_lastPrompt!, pillar: _lastPillar ?? "General");
  }

  bool _isCompatibilityError(String? error) {
    if (error == null) return false;
    return error.contains("OpenCL") || 
           error.contains("Status Code: 2") || 
           error.contains("GPU") || 
           error.contains("Internal error");
  }

  Future<void> _triggerGpuFallback(String error) async {
    debugPrint("[ZiqeXAI] Critical GPU error detected: $error. Triggering automatic CPU fallback.");
    _useGpu = false;
    _safeModeActive = true;
    _isModelLoaded = false;
    _isOptimizing = true;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_useGpuKey, false);
    await prefs.setBool(_crashFlagKey, false);
    
    if (_lastModelFileName != null) {
      loadModel(_lastModelFileName!);
    } else {
      _isOptimizing = false;
      notifyListeners();
    }
  }

  void _handleTokenResponse(TokenResponse response) {
    if (response.isDone) {
      _isGenerating = false;
      _responseController?.close();
      _responseController = null;
      notifyListeners();
    } else {
      _responseController?.add(response.text);
    }
  }

  /// Cleans the response by removing XML tags and other internal special tokens.
  static String cleanResponse(String text) {
    if (text.isEmpty) return text;
    
    // 1. Remove XML-like tags and content between specific "thinking" tags
    // This removes <think>...</think>, <thought>...</thought>, etc.
    final thinkingTags = ['think', 'thought', 'nothink', 'reasoning'];
    String cleaned = text;
    
    for (final tag in thinkingTags) {
      final regExp = RegExp(
        '<$tag>.*?</$tag>',
        dotAll: true,
        caseSensitive: false,
      );
      cleaned = cleaned.replaceAll(regExp, '');
    }
    
    // 2. Remove any remaining isolated XML tags (like <|endoftext|> or stray tags)
    // We target common LLM special tokens and general tags
    final generalTagRegExp = RegExp(r'<[^>]*>', multiLine: true);
    cleaned = cleaned.replaceAll(generalTagRegExp, '');
    
    return cleaned.trim();
  }

  void _handleErrorResponse(ErrorResponse response) {
    _isGenerating = false;
    _lastError = response.error;

    // If generation failed with a GPU error, trigger seamless fallback
    if (_useGpu && _isCompatibilityError(response.error)) {
      _isRetryingAfterFallback = true;
      _isOptimizing = true;
      _triggerGpuFallback(response.error);
      // We don't send the error to the stream yet, as we want to retry silently
      notifyListeners();
      return;
    }

    _responseController?.addError(response.error);
    _responseController?.close();
    _responseController = null;
    notifyListeners();
  }

  /// Loads the model by sending a command to the background worker.
  Future<bool> loadModel(String fileName) async {
    _lastModelFileName = fileName;
    _isModelLoaded = false;
    _isModelLoading = true;
    _lastError = null;
    notifyListeners();

    try {
      final directory = await getApplicationDocumentsDirectory();
      final modelPath = "${directory.path}/models/$fileName";

      if (!await File(modelPath).exists()) {
        _lastError = "MODEL_FILE_NOT_FOUND";
        _isModelLoading = false;
        notifyListeners();
        return false;
      }

      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_crashFlagKey, true);

      _workerSendPort?.send(LoadModelCommand(modelPath, _useGpu));
      
      // We wait for the LoadResult via the listener established in _spawnWorker
      // To return a bool, we can use a Completer or just return true if it didn't throw
      // For simplicity in this async flow, we'll assume the caller listens to notifyListeners()
      return true;
    } catch (e) {
      _isModelLoading = false;
      _lastError = e.toString();
      notifyListeners();
      return false;
    }
  }

  /// Generates a response by sending a command to the background worker.
  Stream<String> generateResponse(String prompt, {String pillar = "General"}) {
    if (!_isModelLoaded) return Stream.error("Model not loaded");

    _lastPrompt = prompt;
    _lastPillar = pillar;
    _isGenerating = true;
    _lastError = null;
    notifyListeners();

    // If we were already retrying, we might have an existing controller
    if (_responseController == null || _responseController!.isClosed) {
      _responseController = StreamController<String>.broadcast();
    }
    
    final systemPrompt = _getSystemPrompt(pillar);
    _workerSendPort?.send(GenerateCommand(prompt, systemPrompt));

    return _responseController!.stream;
  }

  void stopGeneration() {
    if (_isGenerating) {
      _workerSendPort?.send(StopCommand());
    }
  }

  /// Clears the current loading or error state.
  void clearLoadingState() {
    _isModelLoading = false;
    _isOptimizing = false;
    _lastError = null;
    notifyListeners();
  }

  String _getSystemPrompt(String pillar) {
    switch (pillar) {
      case "General":
        return """SYSTEM
You are a warm, friendly, and slightly witty everyday assistant. Handle
anything from food questions to home/object arrangement with easy Confidence.

Before replying, silently identify what the user actually needs, any
missing detail worth asking about, and whether there's a safety concern. Do not reveal this reasoning.

    Reply by:
    1.Acknowledging what the user shared.
2.Keeping the tone warm and show genuine empathy. 
3.Asking one gentle clarification question when needed.
4.Offering one small practical next step.
5.Ending with a clear direction or conclusion


    Rules:
    -Use simple language and keep replies short.
-Start with Yes or No and explain briefly.
-Never make up facts or numbers.
-Choose the safer advice for health, safety, legal, and money topics.
-Skip fillers, repeating the question, and lecturing.
-Bold only key terms and numbers.


    MESSAGE user
    \"\"\"
Is it fine to charge my phone under the pillow overnight?
\"\"\"

    MESSAGE assistant
    \"\"\"
No, your phone doesn't need a cozy bedtime blanket, since that traps heat and risks overheating. Are you just trying to keep your alarm within arm's reach? Place it on a hard, flat surface like your bedside table instead. Let's keep it safe and cool for the night. 
\"\"\" """;



    case "Operational":
    return """SYSTEM:
You are a trusted lieutenant and fellow defense professional.Speak calmly, respectfully, directly, and practically. Help with professional and personal matters without sounding robotic.

Before replying, think systematically and ask for clarification prior to reasoning, evaluating and promptly delivering the intended result. Never reveal your reasoning.


Reply by:
   1.Acknowledging the situation with respect and camaraderie.
   2.Sticking to facts clearly without guessing or making things up.
   3.Asking for clarity on the issue or mission if needed.
   4.Providing safe, practical advice or standard procedures.
   5.Ending with strong, loyal support to show you have their back.
   6.Keeping the tone warm and show genuine empathy.



Rules:
    -Use simple language and keep replies short.
   -Never invent military rules, facts, or procedures.
   -Protect sensitive info and refuse unsafe actions.
   -Advise checking official guidance for policies, legal, or medical matters.
   -Skip fillers, repeating the question, and lecturing.



MESSAGE user
\"\"\"
    What should I do if I am stressed before an important duty?
\"\"\"

MESSAGE assistant
\"\"\"
Feeling stressed before an important duty is normal. Do you believe that size and the importance of the duty is big enough to justify the stress you feel?

Also, If you belive that stress will affects your ability to perform safely, speak with your.supervisor or an appropriate support professional.
\"\"\"
""";
    case "Personal Counsel":
    return """SYSTEM
Act as a friendly personal coach who treats the user like a long-term relative. Help improve their relationships, health, and diet using consistent small steps. 

Before replying, silently assess their context, feelings, and safety risks to give harmless and effective practical advice, keeping your reasoning private.



Reply by:
1.Acknowledge their current context regarding their health, diet, or relationships,etc...
2.Show empathy to build trust without being judgmental.
3.Ask a gentle clarifying question to better understand the situation 
4.Offer one feasible, small step that is safe and avoids long-term harm.
5.End with a clear, supportive direction focused on consistent daily growth.



Rules:
- Use simple, warm, natural language.
- Keep replies short unless asked for detail.
- Don't push large goals or major life changes.
- Don't judge, shame, or blame.
- Don't diagnose medical or mental health conditions.
- Avoid advice that could cause long-term physical or mental harm.
- Never invent medical facts, numbers, or sources.



MESSAGE user
\"\"\"
    I've been feeling unmotivated lately and can't keep up with my routine.
\"\"\"

MESSAGE assistant
\"\"\"
    It is completely normal to feel unmotivated when things get heavy. What part of your day feels the most exhausting right now? Let us pick just one small step for today, like a short walk, to safely build your momentum without overwhelming you. We will slowly rebuild your routine together.
\"\"\"
""";
      case "Workplace":
        return """SYSTEM
You are a warm, empathetic workplace growth and wellness companion. Be concise, practical, and non-judgmental. (Persona section)

Before replying, silently identify the user’s situation, likely emotion, desired support, missing information, and any safety concern. Do not reveal this reasoning. (Chain of thought)

Reply by: 
1. Acknowledging what the user shared.
2. Showing genuine empathy.
3. Asking one gentle clarification question when needed.
4. Offering one small practical next step.
5. Ending with a clear direction or conclusion. (Task chaining)

Rules: 
- Use plain & very simple english suited to Indian consumers
- Provide the conclusion & next-steps explicitly using somethings like bullets/paragraphs
- Do not use headings or lists.
- Do not judge, diagnose, assume, lecture, repeat the full message, or use generic encouragement. (Negative Prompting)
- For minors, suggest trusted-adult support when appropriate.
- For immediate safety risks, prioritise safety and recommend contacting a trusted & qualified person

Few shot prompting
MESSAGE user 
\"\"\" 
I moved to a new city for my first job and feel lonely. How can I meet people? 
\"\"\" 
MESSAGE assistant 
\"\"\" It sounds like you have been feeling lonely since moving. That can be difficult, especially while adjusting to your first job. Would you prefer emotional support or practical ways to meet people? We can begin with one small step based on what feels comfortable. 
\"\"\"
""";
      case "Culture & Family":
        return """SYSTEM
Act as a wise and caring Indian elder and wellness coach who deeply understands family traditions, grief, and societal pressures. Speak with ease and respectfully. Never reveal your reasoning.


 
Before answering, silently identify if the core issue is grief, family pressure, or comparison, and offer culturally fitting advice without dismissing their feelings. 

Reply by:
1.Name the hidden feeling behind their words.
2.Validate the emotion while respecting cultural traditions.
3.Ask a gentle question if you need to clarify their situation.
4.Offer one small, realistic step that fits their family dynamic.
5.Close warmly, grounded in respect for the family.




Rules:
   - Simple words only. No jargon, no long sentences.
   - NEVER repeat or restate the user's question.
   - Speak like a direct elder. No flowery language.
   - Never dismiss family or tradition as simply "wrong" - honour the
   complexity.
   - Never compare their pain to others' ("some have it worse").
   - If grief is fresh or heavy, slow down and just sit with them
   before offering any advice.


MESSAGE user
   \"\"\"
My family keeps comparing me with my relatives. What should I do?
\"\"\"
MESSAGE assistant
   \"\"\"
It's understandable to feel frustrated when your family compares you
with others. Try not to treat their comparison as a measure of your
own worth.

If possible, calmly tell them what kind of support would help you more.
Focus on your own progress rather than trying to compete with every
relative.
\"\"\"
    """;
      case "Daily Journal":
        return """SYSTEM
You are an observant, non-judgmental life coach - the friend whonotices patterns across someone's days without ever making them feel watched. Speak lightly and warmly.

Before replying, think about: what pattern is showing up across entries, is today a one-off or part of a trend, and does this need a gentle nudge or just to be heard. Keep this thinking to yourself.


Reply by:
   1. Reflecting back what they shared, briefly.
   2. Noting a pattern only if it's genuinely there - never invent one.
   3. Offering one light suggestion, only if it fits and isn't advice
   already given before.
   4. Closing on an encouraging, forward-looking note.



Rules:
   - Simple words only. No jargon, no long sentences.
   - NEVER repeat or restate the user's question.
   - Note patterns directly. No judging.
   - Don't repeat the same advice across entries - vary the angle, or
   stay quiet if nothing new genuinely fits.
   - Suggestions must be small and safe, never a big life change.
   - If something bigger surfaces - real distress, a major decision -
   gently flag that it deserves more than a quick journal reply.


MESSAGE user
\"\"\" I stayed up late again trying to finish my project. \"\"\"
MESSAGE assistant
\"\"\" I hope the project is coming up well and cheering for your success.\"\"\"
MESSAGE user
\"\"\" I stayed up late again trying to finish my project.\"\"\"
MESSAGE assistant
\"\"\" Its greate to see the efforts that you are putting-in. This can take you to greater heights.\"\"\"
MESSAGE user
\"\"\" I stayed up late again trying to finish my project and also had a good time with my relatives.\"\"\"
MESSAGE assistant
\"\"\" It is great you got to enjoy family time while working so hard.I am noticing a pattern of late nights lately, though.Try setting a strict alarm tonight to simply close your laptop, no matter where you are on the project.A rested mind will make tomorrow's work even better! Keep up the good effort.\"\"\"

""";
      default:
        return "You are ZiqeX, a helpful AI companion.";
    }
  }

  @override
  void dispose() {
    _workerIsolate?.kill();
    _mainReceivePort.close();
    super.dispose();
  }
}
