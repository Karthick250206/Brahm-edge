import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// [LanguageService] manages the persistent application language/locale preference.
/// Implemented as a singleton extending [ChangeNotifier], it securely stores the user's
/// chosen mother tongue using [FlutterSecureStorage] and notifies listeners across the
/// widget tree whenever the language updates.
class LanguageService extends ChangeNotifier {
  // Singleton instance setup
  static final LanguageService _instance = LanguageService._internal();
  factory LanguageService() => _instance;
  LanguageService._internal();

  // Secure storage instance for persisting language preference locally
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  static const String _languageKey = 'selected_language';

  // Default active language state initialized to English
  String _selectedLanguage = 'English';
  String get selectedLanguage => _selectedLanguage;

  /// Asynchronously initializes and loads the stored language from secure storage on startup
  Future<void> init() async {
    String? lang = await _storage.read(key: _languageKey);
    if (lang != null) {
      _selectedLanguage = lang;
      notifyListeners();
    }
  }

  /// Updates the active language state, saves it securely, and notifies all listening widgets
  Future<void> setLanguage(String language) async {
    _selectedLanguage = language;
    await _storage.write(key: _languageKey, value: language);
    notifyListeners();
  }

  String getEnglishName(String nativeName) {
    switch (nativeName) {
      case "हिन्दी": return "Hindi";
      case "বাংলা": return "Bengali";
      case "मराठी": return "Marathi";
      case "తెలుగు": return "Telugu";
      case "தமிழ்": return "Tamil";
      case "ગુજરાતી": return "Gujarati";
      case "اردو": return "Urdu";
      case "ಕನ್ನಡ": return "Kannada";
      case "ଓଡ଼ିଆ": return "Odia";
      case "മലയാളം": return "Malayalam";
      case "ਪੰਜਾਬੀ": return "Punjabi";
      case "অসমীয়া": return "Assamese";
      case "English": return "English";
      default: return nativeName;
    }
  }
}
