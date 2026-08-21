import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../i18n/strings.g.dart';
import 'model_management_screen.dart';
import 'language_selection_screen.dart';
import 'pillars_grid_selection_screen.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            t.library,
                            style: GoogleFonts.notoSans(
                              color: colorScheme.onSurface,
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            t.library_v2.subtitle,
                            style: GoogleFonts.notoSans(
                              color: colorScheme.onSurfaceVariant,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
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
                  const SizedBox(height: 16),
                  
                  // Language Card - Full Width (proportional height)
                  Flexible(
                    flex: 4,
                    child: _buildLibraryCard(
                      context: context,
                      title: t.library_v2.language_title,
                      description: t.library_v2.language_desc,
                      icon: Icons.language_rounded,
                      color: const Color(0xFFE3F2FD),
                      iconColor: const Color(0xFF1976D2),
                      watermarkIcon: Icons.public_rounded,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LanguageSelectionScreen(isSettingsMode: true)),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 12),
                  
                  // Bottom Grid Area
                  Flexible(
                    flex: 9,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Model Card - Tall
                        Expanded(
                          flex: 1,
                          child: _buildLibraryCard(
                            context: context,
                            title: t.library_v2.model_title,
                            description: t.library_v2.model_desc,
                            icon: Icons.psychology_rounded,
                            color: const Color(0xFFF3E5F5),
                            iconColor: const Color(0xFF7B1FA2),
                            watermarkIcon: Icons.settings_suggest_rounded,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ModelManagementScreen()),
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              // Saved Card
                              Expanded(
                                child: _buildLibraryCard(
                                  context: context,
                                  title: t.library_v2.saved_title,
                                  description: t.library_v2.saved_desc,
                                  icon: Icons.bookmark_border_rounded,
                                  color: const Color(0xFFE0F2F1),
                                  iconColor: const Color(0xFF00796B),
                                  badgeCount: 12,
                                  watermarkIcon: Icons.collections_bookmark_rounded,
                                ),
                              ),
                              const SizedBox(height: 12),
                              // Skills Card
                              Expanded(
                                child: _buildLibraryCard(
                                  context: context,
                                  title: t.library_v2.skills_title,
                                  description: t.library_v2.skills_desc,
                                  icon: Icons.auto_awesome_rounded,
                                  color: const Color(0xFFFCE4EC),
                                  iconColor: const Color(0xFFC2185B),
                                  watermarkIcon: Icons.auto_awesome_rounded,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Pillars Card - Full Width
                  Flexible(
                    flex: 4,
                    child: _buildLibraryCard(
                      context: context,
                      title: t.library_v2.pillars_title,
                      description: t.library_v2.pillars_desc,
                      icon: Icons.account_tree_outlined,
                      color: const Color(0xFFF1F5F9),
                      iconColor: const Color(0xFF475569),
                      watermarkIcon: Icons.schema_outlined,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PillarsGridSelectionScreen()),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildLibraryCard({
    required BuildContext context,
    required String title,
    required String description,
    required IconData icon,
    required Color color,
    required Color iconColor,
    double? height,
    int? badgeCount,
    required IconData watermarkIcon,
    VoidCallback? onTap,
  }) {
    // Determine card sizing hints for styling based on common flex usage
    final bool isTall = height == null;

    return LayoutBuilder(
      builder: (context, constraints) {
        final double h = constraints.maxHeight;
        // Adaptive factors based on height
        final double paddingFactor = h < 140 ? 12.0 : 20.0;
        final double titleSize = h < 120 ? 18.0 : (h < 180 ? 22.0 : 26.0);
        final double descSize = h < 120 ? 11.0 : (h < 180 ? 13.0 : 14.0);
        final double iconBoxSize = h < 120 ? 36.0 : 44.0;
        final double iconSize = h < 120 ? 18.0 : 24.0;
        final double watermarkSize = h < 140 ? 100.0 : (h < 250 ? 140.0 : 180.0);

        return GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20), // Slightly tighter radius for better scaling
              border: Border.all(color: iconColor.withValues(alpha: 0.1)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.02),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  // Watermark Icon
                  Positioned(
                    top: -10,
                    right: -10,
                    child: Icon(
                      watermarkIcon,
                      size: watermarkSize,
                      color: iconColor.withValues(alpha: 0.08),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(paddingFactor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: iconBoxSize,
                              height: iconBoxSize,
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.8),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: iconColor.withValues(alpha: 0.1)),
                              ),
                              child: Icon(icon, color: iconColor, size: iconSize),
                            ),
                            if (badgeCount != null && h > 100)
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.8),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  badgeCount.toString(),
                                  style: GoogleFonts.notoSans(
                                    color: iconColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        // Replace Spacer with a flexible gap that can shrink to 0
                        const Expanded(child: SizedBox(height: 4)),
                        Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.notoSans(
                            color: const Color(0xFF1E293B),
                            fontSize: titleSize,
                            fontWeight: FontWeight.w800,
                            height: 1.1,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          description,
                          maxLines: 2, // Strict limit for all languages
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.notoSans(
                            color: const Color(0xFF64748B),
                            fontSize: descSize,
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
