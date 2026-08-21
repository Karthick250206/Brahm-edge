import 'package:flutter/material.dart';
import '../i18n/strings.g.dart';
import 'pillars_grid_selection_screen.dart';
import '../services/language_service.dart';

/// [LanguageSelectionScreen] provides an interactive multi-language choice interface
/// allowing users to select their mother tongue for localized voice, text, and assistant replies.
/// Supports both an onboarding flow (with navigation progression) and a settings mode (quick update/dismiss).
class LanguageSelectionScreen extends StatefulWidget {
  final bool isSettingsMode;
  const LanguageSelectionScreen({super.key, this.isSettingsMode = false});

  @override
  State<LanguageSelectionScreen> createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String selectedLanguage = "English";
  final LanguageService _languageService = LanguageService();

  @override
  void initState() {
    super.initState();
    // Synchronize initial selection state with stored preferences
    selectedLanguage = _languageService.selectedLanguage;
  }

  // Predefined master catalog of supported Indian and global languages with native greetings
  final List<Map<String, String>> languages = [
    {"name": "हिन्दी", "english": "Hindi", "greeting": "नमस्ते"},
    {"name": "English", "english": "English", "greeting": "Hello"},
    {"name": "தமிழ்", "english": "Tamil", "greeting": "வணக்கம்"},
    {"name": "বাংলা", "english": "Bengali", "greeting": "নমস্কার"},
    {"name": "తెలుగు", "english": "Telugu", "greeting": "నమస్కారం"},
    {"name": "मराठी", "english": "Marathi", "greeting": "नमस्कार"},
    {"name": "ગુજરાતી", "english": "Gujarati", "greeting": "નમસ્તે"},
    {"name": "ಕನ್ನಡ", "english": "Kannada", "greeting": "ನಮಸ್ಕಾರ"},
    {"name": "മലയാളം", "english": "Malayalam", "greeting": "നമസ്കാരം"},
    {"name": "ਪੰਜਾਬੀ", "english": "Punjabi", "greeting": "ਸਤਿ ਸ੍ਰੀ ਅਕਾਲ"},
    {"name": "ଓଡ଼ିଆ", "english": "Odia", "greeting": "ନମସ୍କାର"},
    {"name": "অসমীয়া", "english": "Assamese", "greeting": "নমস্কাৰ"},
    {"name": "اردو", "english": "Urdu", "greeting": "سلام"},
    {"name": "संस्कृत", "english": "Sanskrit", "greeting": "नमो नमः"},
    {"name": "+ 8 more", "english": "More", "greeting": ""},
  ];

  @override
  Widget build(BuildContext context) {
    // Resolve details for the currently active language choice
    Map<String, String> currentLang = languages.firstWhere(
          (l) => l["name"] == selectedLanguage,
      orElse: () => languages[0],
    );
    final t = Translations.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F0), // Light off-white background styling
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // Back Navigation Button
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios, size: 20),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
              const SizedBox(height: 32),

              // Main Custom Headline Title ("Which language feels like home?")
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Serif',
                  ),
                  children: [
                    TextSpan(text: t.lang_legacy.title1),
                    TextSpan(
                      text: t.lang_legacy.title2,
                      style: TextStyle(
                        color: Colors.orange.shade800,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Descriptive Subtext
              Text(
                t.lang_legacy.subtitle,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 24),

              // Visual Progress Line Indicator
              Container(
                width: 100,
                height: 4,
                color: Colors.orange.shade800,
              ),
              const SizedBox(height: 32),

              // Selectable Language Selection Wrap Grid Chips
              Wrap(
                spacing: 8,
                runSpacing: 12,
                children: languages.map((lang) {
                  bool isSelected = selectedLanguage == lang["name"];
                  return GestureDetector(
                    onTap: () {
                      // Prevent selection action if tapped on the "+ 8 more" expander chip
                      if (lang["name"] != "+ 8 more") {
                        setState(() {
                          selectedLanguage = lang["name"]!;
                        });
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: isSelected ? Colors.black : Colors.grey.shade300,
                        ),
                      ),
                      child: Text(
                        lang["name"]!,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black87,
                          fontSize: 14,
                          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const Spacer(),

              // Dynamic Greeting Preview Card Component
              if (currentLang["greeting"]!.isNotEmpty)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEBEBE0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        t.lang_legacy.first_reply,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 10,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        currentLang["greeting"]!,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        t.lang_legacy.script_info(lang: currentLang["english"]!),
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 32),

              // Primary Full-Width Save / Continue Action Button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () async {
                    // Save selected language state to persistent storage service
                    await _languageService.setLanguage(selectedLanguage);
                    if (!context.mounted) return;

                    // Route handling based on execution mode (Settings update vs Onboarding sequence)
                    if (widget.isSettingsMode) {
                      Navigator.of(context).pop();
                    } else {
                      // Replace onboarding screen stack to advance forward without looping back
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const PillarsGridSelectionScreen(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE67E22),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    t.lang_legacy.continueBtn,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
