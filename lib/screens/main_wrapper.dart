import 'package:flutter/material.dart';
import '../theme/design_system.dart';
import 'home_screen.dart';
import 'chat_screen.dart';
import 'library_screen.dart';
import 'profile_screen.dart';
import '../services/language_service.dart';
import '../services/localization_service.dart';

/// [MainWrapper] serves as the primary shell container for the application post-onboarding.
/// It maintains a bottom navigation bar with a persistent index state (`_index`) to switch
/// between the core top-level views: [HomeScreen], [ChatScreen], [LibraryScreen], and [ProfileScreen].
/// It also leverages [ListenableBuilder] to listen to global [LanguageService] updates,
/// dynamically updating localized labels for the navigation tabs in real-time.
class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  // Tracks the active tab index for the bottom navigation bar
  int _index = 0;

  // Master list of top-level application screens bound to the navigation tabs
  final List<Widget> _pages = [
    const HomeScreen(),
    const ChatScreen(),
    const LibraryScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // Access the LanguageService to listen for locale/language changes across the shell
    final languageService = LanguageService();

    return ListenableBuilder(
      listenable: languageService,
      builder: (context, _) {
        final lang = languageService.selectedLanguage;
        String t(String key) => LocalizationService.translate(lang, key);

        return Scaffold(
          // Display the currently selected page based on the bottom navigation index
          body: _pages[_index],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: SystematicIntegrity.level0,
              border: Border(
                top: BorderSide(
                  color: SystematicIntegrity.outlineVariant, 
                  width: 0.5
                )
              ),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: SystematicIntegrity.level0,
              currentIndex: _index,
              selectedItemColor: SystematicIntegrity.primary,
              unselectedItemColor: SystematicIntegrity.neutral,
              selectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              unselectedLabelStyle: const TextStyle(fontSize: 12),
              // Update state to render the chosen tab view on tap
              onTap: (i) => setState(() => _index = i),
              items: [
                BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.home_outlined),
                  ),
                  activeIcon: const Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.home),
                  ),
                  label: t('home'),
                ),
                BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  activeIcon: const Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.chat_bubble),
                  ),
                  label: t('chat'),
                ),
                BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.grid_view),
                  ),
                  activeIcon: const Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.grid_view_rounded),
                  ),
                  label: t('library'),
                ),
                BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.person_outline),
                  ),
                  activeIcon: const Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.person),
                  ),
                  label: t('you'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}