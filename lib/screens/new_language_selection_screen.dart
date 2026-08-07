import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'model_download_screen.dart';
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
    const tealColor = Color(0xFF00444F);
    const lightBgColor = Color(0xFFF7FAFF);
    const cardBgColor = Color(0xFFEBF2F7);

    return Scaffold(
      backgroundColor: lightBgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF1E293B)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Language Selection",
          style: GoogleFonts.inter(
            color: const Color(0xFF1E293B),
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
                    style: GoogleFonts.sora(
                      color: const Color(0xFF1E293B),
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Select the language for your interface.",
                    style: GoogleFonts.inter(
                      color: const Color(0xFF64748B),
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
                      final isSelected = _selectedLanguage == lang["english"] || _selectedLanguage == lang["native"];
                      
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedLanguage = lang["native"]!;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.white : cardBgColor.withValues(alpha: 0.6),
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
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF1E293B),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                lang["english"]!,
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF64748B),
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
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.grey.shade200)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 56,
                    child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFE2E8F0),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Text(
                        "Back",
                        style: GoogleFonts.inter(
                          color: const Color(0xFF475569),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: SizedBox(
                    height: 56,
                    child: TextButton(
                      onPressed: () async {
                        await _languageService.setLanguage(_selectedLanguage);
                        if (context.mounted) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ModelDownloadScreen()),
                          );
                        }
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: tealColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Text(
                        "Continue",
                        style: GoogleFonts.inter(
                          color: Colors.white,
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
