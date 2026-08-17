import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'welcome_screen.dart';
import '../services/language_service.dart';

class NewLanguageSelectionScreen extends StatefulWidget {
  const NewLanguageSelectionScreen({super.key});

  @override
  State<NewLanguageSelectionScreen> createState() => _NewLanguageSelectionScreenState();
}

class _NewLanguageSelectionScreenState extends State<NewLanguageSelectionScreen> {
  final LanguageService _languageService = LanguageService();
  String _selectedLanguage = "English";

  final List<Map<String, String>> _languages = [
    {"native": "English", "english": "English"},
    {"native": "हिन्दी", "english": "Hindi"},
    {"native": "বাংলা", "english": "Bengali"},
    {"native": "मराठी", "english": "Marathi"},
    {"native": "తెలుగు", "english": "Telugu"},
    {"native": "தமிழ்", "english": "Tamil"},
    {"native": "ગુજરાતી", "english": "Gujarati"},
    {"native": "اردو", "english": "Urdu"},
    {"native": "ಕನ್ನಡ", "english": "Kannada"},
    {"native": "ଓଡ଼ିଆ", "english": "Odia"},
    {"native": "മലയാളം", "english": "Malayalam"},
    {"native": "ਪੰਜਾਬੀ", "english": "Punjabi"},
    {"native": "অসমীয়া", "english": "Assamese"},
  ];

  @override
  void initState() {
    super.initState();
    _selectedLanguage = _languageService.selectedLanguage;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tealColor = theme.colorScheme.primary;
    final bgColor = theme.scaffoldBackgroundColor;
    final cardBgColor = theme.colorScheme.surfaceContainerHighest;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Language Selection",
          style: GoogleFonts.notoSans(
            color: theme.colorScheme.onSurface,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose your language",
                    style: GoogleFonts.notoSans(
                      color: theme.colorScheme.onSurface,
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Select the language for your interface.",
                    style: GoogleFonts.notoSans(
                      color: theme.colorScheme.onSurfaceVariant,
                      fontSize: 16,
                      height: 1.4,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 40),
                  
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 1.4,
                    ),
                    itemCount: _languages.length,
                    itemBuilder: (context, index) {
                      final lang = _languages[index];
                      final isSelected = _selectedLanguage == lang["native"];
                      
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedLanguage = lang["native"]!;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                            color: isSelected ? theme.colorScheme.surface : cardBgColor.withValues(alpha: 0.6),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isSelected ? tealColor : Colors.transparent,
                              width: 2,
                            ),
                            boxShadow: isSelected ? [
                              BoxShadow(
                                color: tealColor.withValues(alpha: 0.1),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              )
                            ] : [],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                lang["native"]!,
                                style: GoogleFonts.notoSans(
                                  color: theme.colorScheme.onSurface,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                lang["english"]!,
                                style: GoogleFonts.notoSans(
                                  color: theme.colorScheme.onSurfaceVariant,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          
          // Bottom Navigation Buttons
          Container(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 40),
            decoration: BoxDecoration(
              color: bgColor,
              border: Border(top: BorderSide(color: theme.colorScheme.outline.withValues(alpha: 0.1))),
            ),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 56,
                    child: TextButton(
                      onPressed: () async {
                        await _languageService.setLanguage(_selectedLanguage);
                        if (context.mounted) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                          );
                        }
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: tealColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Text(
                        "Continue",
                        style: GoogleFonts.notoSans(
                          color: theme.colorScheme.onPrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
