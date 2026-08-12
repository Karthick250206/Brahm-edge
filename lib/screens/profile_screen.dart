import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../security/providers/security_provider.dart';
import 'security_screen.dart';
import 'language_selection_screen.dart';
import 'data_management_screen.dart';
import '../services/language_service.dart';
import '../services/localization_service.dart';

/// [ProfileScreen] acts as the "You" tab of the application wrapper, letting users manage
/// their configuration, preferences (such as language selection, security settings, privacy tiers,
/// storage purge, and ephemeral modes), view the application build details, and reset the prototype.
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final languageService = LanguageService();
    final securityProvider = context.watch<SecurityProvider>();
    
    const bgColor = Color(0xFF0B1019);
    const cardColor = Color(0xFF161B22);
    const accentColor = Color(0xFF00E5FF);
    const textSecondary = Color(0xFF8B949E);

    final bool appSecurityEnabled = securityProvider.isAppLockEnabled;

    return ListenableBuilder(
      listenable: languageService,
      builder: (context, _) {
        final lang = languageService.selectedLanguage;
        String t(String key) => LocalizationService.translate(lang, key);

        return Scaffold(
          backgroundColor: bgColor,
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  // Header
                  const Text(
                    "Profile settings",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Static Header Row
                  Row(
                    children: [
                      const Text(
                        "ACCESS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(width: 8),
                      SvgPicture.asset(
                        'assets/icons/wave_sine.svg',
                        width: 16,
                        height: 4,
                        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "PRIVACY",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(width: 8),
                      SvgPicture.asset(
                        'assets/icons/wave_sine.svg',
                        width: 16,
                        height: 4,
                        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "SYSTEM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // User Profile Card
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: const BoxDecoration(
                            color: Color(0xFF4DB6AC),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Text(
                              "R",
                              style: TextStyle(color: bgColor, fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  t('you'),
                                  style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  "• हिन्दी",
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                              appSecurityEnabled ? "Security active" : "Security inactive",
                              style: TextStyle(color: textSecondary, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Section Label
                  const Text(
                    "Preferences and security",
                    style: TextStyle(
                      color: accentColor,
                      fontSize: 12,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Language Item
                  _buildPreferenceCard(
                    icon: Icons.language,
                    title: "Language",
                    subtitle: "हिन्दी (Hindi)",
                    accentColor: accentColor,
                    cardColor: cardColor,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LanguageSelectionScreen(isSettingsMode: true),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 12),

                  // Chat Data Management Item
                  _buildPreferenceCard(
                    icon: Icons.chat_bubble_outline,
                    title: "Chat Data management and retention",
                    subtitle: "Manage your conversation history",
                    accentColor: accentColor,
                    cardColor: cardColor,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DataManagementScreen()),
                      );
                    },
                  ),
                  const SizedBox(height: 12),

                  // App Security Item
                  _buildPreferenceCard(
                    icon: Icons.security_outlined,
                    title: "App lock",
                    subtitle: "Protect Brahm-edge with your fingerprint, face, or PIN",
                    accentColor: accentColor,
                    cardColor: cardColor,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SecurityScreen()),
                      );
                    },
                  ),
                  const SizedBox(height: 12),

                  // Privacy Tiers Item
                  _buildPreferenceCard(
                    icon: Icons.shield_outlined,
                    title: "Privacy mode",
                    subtitle: "1 active 'Brahm-edge listening mode'",
                    accentColor: accentColor,
                    cardColor: cardColor,
                  ),
                  const SizedBox(height: 12),

                  // Storage Item
                  _buildPreferenceCard(
                    icon: Icons.storage_outlined,
                    title: "Data and retention",
                    subtitle: "184 KB of data stored in device",
                    accentColor: accentColor,
                    cardColor: cardColor,
                  ),
                  const SizedBox(height: 12),

                  // Ephemeral Item
                  _buildPreferenceCard(
                    icon: Icons.face_outlined,
                    title: "Incognito chat",
                    subtitle: "Chat without saving to history. Cannot be recovered after exiting the chat",
                    accentColor: accentColor,
                    cardColor: cardColor,
                  ),

                  const SizedBox(height: 48),
                  // System Info Section Label
                  const Text(
                    "SYSTEM INFO",
                    style: TextStyle(
                      color: accentColor,
                      fontSize: 12,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // BrahmAI Info Card
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.white.withOpacity(0.1)),
                              ),
                              child: const Center(
                                child: Icon(Icons.wb_sunny_outlined, color: Colors.white, size: 24),
                              ),
                            ),
                            const SizedBox(width: 16),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Brahm-edge",
                                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "V0.1 • SOVEREIGN • ON-DEVICE",
                                  style: TextStyle(color: accentColor, fontSize: 10, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Container(
                          padding: const EdgeInsets.only(left: 16),
                          decoration: const BoxDecoration(
                            border: Border(left: BorderSide(color: accentColor, width: 2)),
                          ),
                          child: const Text(
                            "\"Built in India. For the World.\"",
                            style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 48),
                  // Reset Button
                  Center(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFF161B22)),
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: const Text(
                        "RESET PROTOTYPE",
                        style: TextStyle(color: Color(0xFFF44336), fontSize: 14, fontWeight: FontWeight.bold),
                      ),
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



  Widget _buildPreferenceCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color accentColor,
    required Color cardColor,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFF0B1019),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: accentColor, size: 20),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: const TextStyle(color: Color(0xFF8B949E), fontSize: 12),
                  ),
                ],
              ),
            ),
            if (trailing != null)
              trailing
            else
              const Icon(Icons.arrow_forward_ios, color: Color(0xFF8B949E), size: 14),
          ],
        ),
      ),
    );
  }
}
