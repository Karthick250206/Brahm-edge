import 'dart:async';
import 'dart:isolate';
import 'package:litertlm/litertlm.dart';

/// Messages sent from the main thread to the Isolate
abstract class WorkerCommand {}

class LoadModelCommand extends WorkerCommand {
  final String modelPath;
  final bool useGpu;
  LoadModelCommand(this.modelPath, this.useGpu);
}

class GenerateCommand extends WorkerCommand {
  final String prompt;
  final String systemPrompt;
  GenerateCommand(this.prompt, this.systemPrompt);
}

class WarmupCommand extends WorkerCommand {}

class UnloadModelCommand extends WorkerCommand {}

class StopCommand extends WorkerCommand {}

/// Messages sent from the Isolate back to the main thread
abstract class WorkerResponse {}

class LoadResult extends WorkerResponse {
  final bool success;
  final bool wasFallback;
  final bool wasWarmup;
  final String? error;
  LoadResult(this.success, {this.wasFallback = false, this.wasWarmup = false, this.error});
}

class TokenResponse extends WorkerResponse {
  final String text;
  final bool isDone;
  TokenResponse(this.text, {this.isDone = false});
}

class ErrorResponse extends WorkerResponse {
  final String error;
  ErrorResponse(this.error);
}

/// The entry point for the background Isolate.
void inferenceWorkerEntryPoint(SendPort mainSendPort) {
  final workerReceivePort = ReceivePort();
  mainSendPort.send(workerReceivePort.sendPort);

  Engine? engine;
  Conversation? conversation;
  String? currentSystemPrompt;
  bool isGenerating = false;
  StreamSubscription? subscription;

  workerReceivePort.listen((message) async {
    if (message is LoadModelCommand) {
      try {
        if (conversation != null) await conversation!.dispose();
        if (engine != null) await engine!.dispose();
        currentSystemPrompt = null;

        // Respect the useGpu flag strictly
        final backend = message.useGpu ? Backend.gpu() : Backend.cpu();
        
        engine = Engine(
          engineConfig: EngineConfig(
            modelPath: message.modelPath,
            backend: backend,
            maxNumTokens: 2048,
          ),
        );
        
        await engine!.initialize();

        conversation = await engine!.createConversation(
          const ConversationConfig(
            sessionConfig: SessionConfig(
              samplerConfig: SamplerConfig(
                topK: 40,
                topP: 0.9,
                temperature: 0.3,
              ),
            ),
          ),
        );

        mainSendPort.send(LoadResult(true));
      } catch (e) {
        // If GPU failed, we don't automatically fallback here to avoid infinite loops
        // The main thread should handle the error and potentially retry with useGpu = false
        mainSendPort.send(LoadResult(false, error: e.toString()));
      }
    } else if (message is GenerateCommand) {
      try {
        if (engine == null || conversation == null) {
          mainSendPort.send(ErrorResponse("Engine not initialized"));
          return;
        }

        // If the pillar/prompt changed, we need a fresh conversation
        if (currentSystemPrompt != null && currentSystemPrompt != message.systemPrompt) {
          await conversation!.dispose();
          conversation = await engine!.createConversation(
            const ConversationConfig(
              sessionConfig: SessionConfig(
                samplerConfig: SamplerConfig(
                  topK: 40,
                  topP: 0.9,
                  temperature: 0.3,
                ),
              ),
            ),
          );
          currentSystemPrompt = null;
        }

        isGenerating = true;
        // Only prepend system prompt if it's the start of a conversation
        final String input;
        if (currentSystemPrompt == null) {
          input = "${message.systemPrompt}\n\nUser: ${message.prompt}";
          currentSystemPrompt = message.systemPrompt;
        } else {
          input = message.prompt;
        }

        final responseStream = conversation!.sendMessageStream(Message.user(input));

        subscription = responseStream.listen(
          (response) {
            mainSendPort.send(TokenResponse(response.text));
          },
          onDone: () {
            isGenerating = false;
            mainSendPort.send(TokenResponse("", isDone: true));
          },
          onError: (e) {
            isGenerating = false;
            mainSendPort.send(ErrorResponse(e.toString()));
          },
        );
      } catch (e) {
        isGenerating = false;
        mainSendPort.send(ErrorResponse(e.toString()));
      }
    } else if (message is WarmupCommand) {
      try {
        if (engine == null || conversation == null) {
          mainSendPort.send(LoadResult(false, wasWarmup: true, error: "Engine not initialized"));
          return;
        }
        // Minimal inference to check GPU health
        final warmupStream = conversation!.sendMessageStream(Message.user(" "));
        await warmupStream.first;
        mainSendPort.send(LoadResult(true, wasWarmup: true));
      } catch (e) {
        mainSendPort.send(LoadResult(false, wasWarmup: true, error: e.toString()));
      }
    } else if (message is UnloadModelCommand) {
      try {
        if (conversation != null) await conversation!.dispose();
        if (engine != null) await engine!.dispose();
        conversation = null;
        engine = null;
        currentSystemPrompt = null;
        mainSendPort.send(LoadResult(true));
      } catch (e) {
        mainSendPort.send(LoadResult(false, error: e.toString()));
      }
    } else if (message is StopCommand) {
      if (isGenerating) {
        subscription?.cancel();
        isGenerating = false;
        mainSendPort.send(TokenResponse("", isDone: true));
      }
    }
  });
}
