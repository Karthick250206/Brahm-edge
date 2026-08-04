import 'package:flutter/material.dart';
import 'chat_screen.dart';
import '../services/language_service.dart';
import '../services/localization_service.dart';

/// [HomeScreen] serves as the primary dashboard interface after authentication/onboarding.
/// It provides local status information, multi-language support reactivity via [ListenableBuilder],
/// quick-action shortcuts (Ask anything, Voice mode, Image query, Panchang, Ephemeral sessions),
/// and a list of recent private chat threads.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the LanguageService to listen for locale/language changes across the dashboard
    final languageService = LanguageService();

    return ListenableBuilder(
      listenable: languageService,
      builder: (context, _) {
        final lang = languageService.selectedLanguage;
        String t(String key) => LocalizationService.translate(lang, key);

        return Scaffold(
          backgroundColor: const Color(0xFFF5F5F0),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),

                  // Top Header Row with Greeting and User Profile Avatar Initial
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        t('hello'),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Serif',
                        ),
                      ),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: const Center(
                          child: Text(
                            "R",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    t('mind_today'),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Offline Status & On-Device Security Indicator Banner
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.orange.shade100),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.lock_outline, size: 16, color: Colors.orange.shade800),
                        const SizedBox(width: 8),
                        Text(
                          t('on_device_only'),
                          style: TextStyle(
                            color: Colors.orange.shade800,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          t('offline'),
                          style: TextStyle(
                            color: Colors.orange.shade800,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Icon(Icons.check, size: 14, color: Colors.orange.shade800),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Section Title: Action triggers
                  Text(
                    t('start_something'),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Primary Large Card: Open General Chat Session ("Ask anything")
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ChatScreen()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE67E22),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(Icons.chat_bubble_outline, color: Colors.white),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  t('ask_anything'),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  t('ask_anything_sub'),
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Grid Row 1: Voice Mode and Image Query Shortcuts
                  Row(
                    children: [
                      Expanded(child: _buildSmallCard(Icons.mic_none, t('voice_mode'), t('voice_mode_sub'))),
                      const SizedBox(width: 16),
                      Expanded(child: _buildSmallCard(Icons.image_outlined, t('ask_image'), t('ask_image_sub'))),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Grid Row 2: Panchang and Ephemeral Session Utilities
                  Row(
                    children: [
                      Expanded(child: _buildSmallCard(Icons.settings_suggest_outlined, t('panchang'), t('panchang_sub'))),
                      const SizedBox(width: 16),
                      Expanded(child: _buildSmallCard(Icons.history_toggle_off, t('ephemeral'), t('ephemeral_sub'))),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Section Title: Recent chat history list
                  Text(
                    t('recent'),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Recent History Item 1
                  _buildRecentItem(
                    Icons.star_outline,
                    const Color(0xFF00796B),
                    const Color(0xFFE8F3EF),
                    "Mom's prescription",
                    "12 messages · 4m ago",
                  ),
                  const Divider(height: 1, color: Color(0xFFE0E0DB)),

                  // Recent History Item 2
                  _buildRecentItem(
                    Icons.language,
                    const Color(0xFFD35400),
                    const Color(0xFFFCE9E0),
                    "A career decision",
                    "28 messages · yesterday",
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Helper widget to build a styled list row item for recent chat sessions
  Widget _buildRecentItem(IconData icon, Color iconColor, Color bgColor, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: iconColor, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Helper widget to build individual secondary shortcut dashboard cards
  Widget _buildSmallCard(IconData icon, String title, String subtitle) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFEBEBE0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.orange.shade800),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}