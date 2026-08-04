import 'package:flutter/material.dart';
import '../services/language_service.dart';
import '../services/localization_service.dart';

/// [ChatScreen] provides the primary conversational interface for users.
/// It features real-time localization support, dynamic suggestion chips,
/// on-device privacy status indicators, and a responsive message input bar.
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  // Controls text input and tracks input content state
  final TextEditingController _controller = TextEditingController();
  bool _hasText = false;

  @override
  void initState() {
    super.initState();
    // Listen to changes in the text field to dynamically toggle send button styles
    _controller.addListener(() {
      setState(() {
        _hasText = _controller.text.trim().isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Handles sending message logic (clears input if text is present)
  void _handleSend() {
    if (_hasText) {
      // TODO: Implement actual message submission and processing pipeline
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Access the LanguageService to listen for locale changes across the widget lifecycle
    final languageService = LanguageService();

    return ListenableBuilder(
      listenable: languageService,
      builder: (context, _) {
        final lang = languageService.selectedLanguage;
        String t(String key) => LocalizationService.translate(lang, key);
        String currentLangCode = _getShortCode(lang);

        return Scaffold(
          backgroundColor: const Color(0xFFF5F5F0),
          body: Column(
            children: [
              // Top privacy and active status indicator banner
              Container(
                color: const Color(0xFFE8F3EF),
                child: SafeArea(
                  bottom: false,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Center(
                      child: Text(
                        "• ${t('on_device_only').toUpperCase()} · ${t('active').toUpperCase()}",
                        style: const TextStyle(
                          color: Color(0xFF2E7D32),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Custom Navigation/App Bar Section
              SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back_ios, size: 20),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "BrahmAI",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Serif',
                                ),
                              ),
                              const SizedBox(width: 8),
                              // Language badge showing short-code (e.g., 'En', 'Hi')
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.orange.shade300),
                                ),
                                child: Text(
                                  currentLangCode,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFE67E22),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "thinking with you · privately",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.more_vert),
                    ],
                  ),
                ),
              ),
              const Divider(height: 1, color: Color(0xFFE0E0DB)),

              // Main Scrollable Chat Area
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(24),
                  children: [
                    // AI Initial Greeting Message Bubble
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEDE9D0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.5,
                          ),
                          children: [
                            TextSpan(
                              text: "• ${t('on_device_only').toUpperCase()} ",
                              style: const TextStyle(
                                color: Color(0xFF2E7D32),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: _getGreeting(lang),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Quick Action Suggestions Chips
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        _buildSuggestionChip(t('health_question')),
                        _buildSuggestionChip(t('family')),
                        _buildSuggestionChip(t('work')),
                        _buildSuggestionChip(t('just_thinking')),
                      ],
                    ),
                    const SizedBox(height: 32),

                    // Explicit On-Device Privacy Security Notice Card
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFCE9E0),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: const Color(0xFFE67E22).withValues(alpha: 0.3)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.lock, size: 14, color: Color(0xFFE67E22)),
                          const SizedBox(width: 8),
                          const Expanded(
                            child: Text(
                              "this conversation lives on this device. no server. no log.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFE67E22),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Bottom Input & Actions Bar
              const Divider(height: 1, color: Color(0xFFE0E0DB)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: SafeArea(
                  child: Row(
                    children: [
                      // File/Media Attachment Button
                      IconButton(
                        onPressed: () {
                          // TODO: Handle attachment logic
                        },
                        icon: const Icon(Icons.add, color: Colors.black54),
                      ),
                      const SizedBox(width: 4),

                      // Message Text Field Input Container
                      Expanded(
                        child: Container(
                          height: 48,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEBEBE0),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: TextField(
                            controller: _controller,
                            onSubmitted: (_) => _handleSend(),
                            decoration: const InputDecoration(
                              hintText: "write something...",
                              hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(vertical: 12),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),

                      // Voice Input Button
                      IconButton(
                        onPressed: () {
                          // TODO: Handle voice transcription/input logic
                        },
                        icon: const Icon(Icons.mic_none, color: Colors.black54),
                      ),
                      const SizedBox(width: 4),

                      // Dynamic Send Button (Changes color based on text input availability)
                      GestureDetector(
                        onTap: _handleSend,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: _hasText ? const Color(0xFFE67E22) : const Color(0xFFB5B5A8),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(Icons.north_east, color: Colors.white, size: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  /// Maps full language names to compact short-codes for UI chips
  String _getShortCode(String language) {
    switch (language) {
      case "हिन्दी": return "Hi";
      case "English": return "En";
      case "தமிழ்": return "Ta";
      case "বাংলা": return "Bn";
      case "తెలుగు": return "Te";
      case "मराठी": return "Mr";
      case "ગુજરાતી": return "Gu";
      case "ಕನ್ನಡ": return "Kn";
      case "മലയാളം": return "Ml";
      case "ਪੰਜਾਬী": return "Pa";
      case "ଓଡ଼ିଆ": return "Or";
      case "অসমীয়া": return "As";
      case "اردو": return "Ur";
      case "संस्कृत": return "Sa";
      default: return "En";
    }
  }

  /// Returns localized welcome text matching the user's active choice
  String _getGreeting(String language) {
    switch (language) {
      case "हिन्दी": return "नमस्ते। मैं यहाँ हूँ - आपके साथ किसी भी विषय पर सोचने के लिए। आपके मन में क्या है?";
      case "தமிழ்": return "வணக்கம். எதைப்பற்றியும் உங்களுடன் சிந்திக்க நான் இங்கே இருக்கிறேன். உங்கள் மனதில் என்ன இருக்கிறது?";
      case "తెలుగు": return "నమస్కారం. దేని గురించి అయినా మీతో ఆలోచించడానికి నేను ఇక్కడ ఉన్నాను. మీ మనస్సులో ఏముంది?";
      case "English": return "I'm here — to think with you about anything. What's on your mind?";
      default: return "I'm here — to think with you about anything. What's on your mind?";
    }
  }

  /// Helper widget to build consistent suggestion chips
  Widget _buildSuggestionChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 12,
        ),
      ),
    );
  }
}