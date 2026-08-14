import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../security/providers/security_provider.dart';
import '../providers/theme_provider.dart';
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
    final themeProvider = context.watch<ThemeProvider>();
    final theme = Theme.of(context);
    
    final bgColor = theme.colorScheme.surface;
    final cardColor = theme.colorScheme.surfaceContainerHighest;
    final accentColor = theme.colorScheme.primary;
    final textSecondary = theme.colorScheme.onSurfaceVariant;

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
                  Text(
                    "Profile settings",
                    style: GoogleFonts.notoSans(
                      color: theme.colorScheme.onSurface,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Static Header Row
                  Row(
                    children: [
                      Text(
                        "ACCESS",
                        style: GoogleFonts.notoSans(
                          color: theme.colorScheme.onSurface,
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
                        colorFilter: ColorFilter.mode(theme.colorScheme.onSurface, BlendMode.srcIn),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "PRIVACY",
                        style: GoogleFonts.notoSans(
                          color: theme.colorScheme.onSurface,
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
                        colorFilter: ColorFilter.mode(theme.colorScheme.onSurface, BlendMode.srcIn),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "SYSTEM",
                        style: GoogleFonts.notoSans(
                          color: theme.colorScheme.onSurface,
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
                          child: Center(
                            child: Text(
                              "R",
                              style: GoogleFonts.notoSans(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
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
                                  style: GoogleFonts.notoSans(color: theme.colorScheme.onSurface, fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  "• $lang",
                                  style: GoogleFonts.notoSans(color: theme.colorScheme.onSurface, fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                              appSecurityEnabled ? "Security active" : "Security inactive",
                              style: GoogleFonts.notoSans(color: textSecondary, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Section Label
                  Text(
                    "Preferences and security",
                    style: GoogleFonts.notoSans(
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
                    subtitle: "$lang (${languageService.getEnglishName(lang)})",
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

                  // Dark Mode Toggle Item
                  _buildPreferenceCard(
                    icon: themeProvider.isDarkMode ? Icons.dark_mode : Icons.light_mode,
                    title: "Dark Mode",
                    subtitle: "Switch between light and dark workspace themes",
                    accentColor: accentColor,
                    cardColor: cardColor,
                    trailing: Switch(
                      value: themeProvider.isDarkMode,
                      onChanged: (val) => themeProvider.toggleTheme(val),
                    ),
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
                    subtitle: "Protect ZiqeX with your fingerprint, face, or PIN",
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
                    subtitle: "1 active 'ZiqeX listening mode'",
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
                  Text(
                    "SYSTEM INFO",
                    style: GoogleFonts.notoSans(
                      color: accentColor,
                      fontSize: 12,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // ZiqeXAI Info Card
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
                                border: Border.all(color: theme.colorScheme.onSurface.withValues(alpha: 0.1)),
                              ),
                              child: Center(
                                child: Icon(Icons.wb_sunny_outlined, color: theme.colorScheme.onSurface, size: 24),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ZiqeX",
                                  style: GoogleFonts.notoSans(color: theme.colorScheme.onSurface, fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "V0.1 • SOVEREIGN • ON-DEVICE",
                                  style: GoogleFonts.notoSans(color: accentColor, fontSize: 10, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Container(
                          padding: const EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                            border: Border(left: BorderSide(color: accentColor, width: 2)),
                          ),
                          child: Text(
                            "\"Built in India. For the World.\"",
                            style: GoogleFonts.notoSans(
                              color: theme.colorScheme.onSurface,
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
                        side: BorderSide(color: cardColor),
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text(
                        "RESET PROTOTYPE",
                        style: GoogleFonts.notoSans(color: const Color(0xFFF44336), fontSize: 14, fontWeight: FontWeight.bold),
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
                color: Theme.of(context).colorScheme.surface,
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
                    style: GoogleFonts.notoSans(color: Theme.of(context).colorScheme.onSurface, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: GoogleFonts.notoSans(color: Theme.of(context).colorScheme.onSurfaceVariant, fontSize: 12),
                  ),
                ],
              ),
            ),
            if (trailing != null)
              trailing
            else
              Icon(Icons.arrow_forward_ios, color: Theme.of(context).colorScheme.onSurfaceVariant, size: 14),
          ],
        ),
      ),
    );
  }
}
