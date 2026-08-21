import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../i18n/strings.g.dart';
import 'chat_screen.dart';

/// [HomeScreen] serves as the primary dashboard interface after authentication/onboarding.
/// It provides local status information, multi-language support reactivity via [ListenableBuilder],
/// quick-action shortcuts (Ask anything, Voice mode, Image query, Panchang, Ephemeral sessions),
/// and a list of recent private chat threads.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the LanguageService to listen for locale/language changes across the dashboard
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          t.hello,
                          style: GoogleFonts.notoSans(
                            color: theme.colorScheme.onSurface,
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          t.mind_today,
                          style: GoogleFonts.notoSans(
                            color: theme.colorScheme.onSurfaceVariant,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: theme.colorScheme.outline.withValues(alpha: 0.2)),
                    ),
                    child: Center(
                      child: Text(
                        "R",
                        style: GoogleFonts.notoSans(
                          color: theme.colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Offline Status & On-Device Security Indicator Banner
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: theme.colorScheme.primary.withValues(alpha: 0.2)),
                ),
                child: Row(
                  children: [
                    Icon(Icons.lock_outline, size: 16, color: theme.colorScheme.primary),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        t.on_device_only,
                        style: GoogleFonts.notoSans(
                          color: theme.colorScheme.primary,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      t.offline,
                      style: GoogleFonts.notoSans(
                        color: theme.colorScheme.primary,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Icon(Icons.check, size: 14, color: theme.colorScheme.primary),
                  ],
                ),
              ),
              const SizedBox(height: 32),

              // Section Title: Action triggers
              Text(
                t.start_something.toUpperCase(),
                style: GoogleFonts.notoSans(
                  color: theme.colorScheme.onSurfaceVariant,
                  fontSize: 11,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w900,
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
                    color: theme.colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: theme.colorScheme.outline.withValues(alpha: 0.1)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.chat_bubble_outline, color: theme.colorScheme.onPrimary),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              t.ask_anything,
                              style: GoogleFonts.notoSans(
                                color: theme.colorScheme.onSurface,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              t.ask_anything_sub,
                              style: GoogleFonts.notoSans(
                                color: theme.colorScheme.onSurfaceVariant,
                                fontSize: 12,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: theme.colorScheme.onSurfaceVariant, size: 16),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Grid Row 1: Voice Mode and Image Query Shortcuts
              Row(
                children: [
                  Expanded(child: _buildSmallCard(context, Icons.mic_none, t.voice_mode, t.voice_mode_sub)),
                  const SizedBox(width: 16),
                  Expanded(child: _buildSmallCard(context, Icons.image_outlined, t.ask_image, t.ask_image_sub)),
                ],
              ),
              const SizedBox(height: 16),

              // Grid Row 2: Panchang and Ephemeral Session Utilities
              Row(
                children: [
                  Expanded(child: _buildSmallCard(context, Icons.settings_suggest_outlined, t.panchang, t.panchang_sub)),
                  const SizedBox(width: 16),
                  Expanded(child: _buildSmallCard(context, Icons.history_toggle_off, t.ephemeral, t.ephemeral_sub)),
                ],
              ),
              const SizedBox(height: 24),

              // Section Title: Recent chat history list
              Text(
                t.recent.toUpperCase(),
                style: GoogleFonts.notoSans(
                  color: theme.colorScheme.onSurfaceVariant,
                  fontSize: 11,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 12),

              // Recent History Item 1
              _buildRecentItem(
                context,
                Icons.star_outline,
                const Color(0xFF00796B),
                theme.colorScheme.secondary.withValues(alpha: 0.3),
                "Mom's prescription",
                "12 messages · 4m ago",
              ),
              Divider(height: 1, color: theme.colorScheme.outline.withValues(alpha: 0.1)),

              // Recent History Item 2
              _buildRecentItem(
                context,
                Icons.language,
                const Color(0xFFD35400),
                theme.colorScheme.secondary.withValues(alpha: 0.3),
                "A career decision",
                "28 messages · yesterday",
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  /// Helper widget to build a styled list row item for recent chat sessions
  Widget _buildRecentItem(BuildContext context, IconData icon, Color iconColor, Color bgColor, String title, String subtitle) {
    final theme = Theme.of(context);
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
                  style: GoogleFonts.notoSans(
                    color: theme.colorScheme.onSurface,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: GoogleFonts.notoSans(
                    color: theme.colorScheme.onSurfaceVariant,
                    fontSize: 13,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Helper widget to build individual secondary shortcut dashboard cards
  Widget _buildSmallCard(BuildContext context, IconData icon, String title, String subtitle) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: theme.colorScheme.outline.withValues(alpha: 0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: theme.colorScheme.primary),
          const SizedBox(height: 12),
          Text(
            title,
            style: GoogleFonts.notoSans(
              color: theme.colorScheme.onSurface,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: GoogleFonts.notoSans(
              color: theme.colorScheme.onSurfaceVariant,
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
