import 'package:flutter/material.dart';
import '../services/language_service.dart';
import '../services/localization_service.dart';

/// [LibraryScreen] serves as the repository and model manager dashboard for the app.
/// It utilizes [ListenableBuilder] to listen for active language and localization state updates,
/// displays filter tabs for models, threads, and voice items, shows on-device models with storage metrics,
/// and handles local AI model download/activation statuses.
class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Access LanguageService to listen for locale updates
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

                  // Top Header Row with Title, Subtitle, and Settings Icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            t('library'),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Serif',
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            t('library_sub'),
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: const Icon(Icons.settings_outlined, color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Filter Chips Selection Row (Models, Threads, Voice)
                  Row(
                    children: [
                      _buildFilterChip("models", true),
                      const SizedBox(width: 8),
                      _buildFilterChip("threads", false),
                      const SizedBox(width: 8),
                      _buildFilterChip("voice", false),
                    ],
                  ),

                  const SizedBox(height: 40),

                  // Section Title: On-Device Status Indicator
                  Text(
                    t('on_this_device'),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Active Model Card 1: BrahmAI base 2B (Currently Active)
                  _buildModelCard(
                    title: "BrahmAI · base 2B",
                    subtitle: "1.3 GB · last used 4m ago",
                    isActive: true,
                    activeLabel: t('active'),
                    tags: ["~18 tok/s", "Q4_K_M", _getLanguageTag(languageService.selectedLanguage)],
                  ),

                  const SizedBox(height: 16),

                  // Secondary Model Card 2: BrahmAI 5B (Available for download/addition)
                  _buildModelCard(
                    title: "BrahmAI · 5B",
                    subtitle: "3.2 GB · larger context · better reasoning",
                    isActive: false,
                    addLabel: t('add'),
                    tags: ["~9 tok/s", "Q4_K_M", _getLanguageTag(languageService.selectedLanguage)],
                    hasAddButton: true,
                  ),

                  const SizedBox(height: 32),

                  // Local Storage Usage Breakdown Section Container
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEDE9D0),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              t('storage_used'),
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "1.27 / 8 GB",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),

                        // Storage Progress Bar Indicator
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: LinearProgressIndicator(
                            value: 0.16,
                            minHeight: 8,
                            backgroundColor: Colors.grey.shade300,
                            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFD35400)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Helper utility to construct language model tags matching current locale profile
  String _getLanguageTag(String language) {
    if (language == "English") return "14 langs";
    return "15 langs (+ $language)";
  }

  /// Helper widget to build interactive filter chip elements
  Widget _buildFilterChip(String label, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: isSelected ? Colors.black : Colors.grey.shade300),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black87,
          fontSize: 14,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  /// Helper widget to build individual AI Model card components with customizable states
  Widget _buildModelCard({
    required String title,
    required String subtitle,
    required bool isActive,
    required List<String> tags,
    String? activeLabel,
    String? addLabel,
    bool hasAddButton = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFFCE9E0) : const Color(0xFFEDE9D0),
        borderRadius: BorderRadius.circular(24),
        border: isActive ? Border.all(color: const Color(0xFFD35400).withValues(alpha: 0.5)) : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              if (isActive && activeLabel != null)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD35400),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    activeLabel,
                    style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              if (hasAddButton && addLabel != null)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade400),
                  ),
                  child: Text(
                    addLabel,
                    style: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),

          // Model Specification Tags Row
          Row(
            children: tags.map((tag) {
              return Container(
                margin: const EdgeInsets.only(right: 8),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Text(
                  tag,
                  style: const TextStyle(color: Colors.black87, fontSize: 12),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}