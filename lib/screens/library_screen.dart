import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../i18n/strings.g.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
        toolbarHeight: 80,
        title: Column(
          children: [
            Text(
              t.library,
              style: GoogleFonts.notoSans(
                color: colorScheme.onSurface,
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              t.library_v2.subtitle,
              style: GoogleFonts.notoSans(
                color: colorScheme.onSurfaceVariant,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Calculate dynamic heights based on available screen space
          final double availableHeight = constraints.maxHeight - 48;
          final double topCardHeight = (availableHeight * 0.30).clamp(200.0, 280.0);
          final double bottomRowHeight = (availableHeight - topCardHeight - 16).clamp(400.0, 650.0);
          final double smallCardHeight = (bottomRowHeight - 16) / 2;

          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
            child: Column(
              children: [
                // Language Card - Full Width
                _buildLibraryCard(
                  context: context,
                  title: t.library_v2.language_title,
                  description: t.library_v2.language_desc,
                  icon: Icons.language_rounded,
                  color: const Color(0xFFE3F2FD),
                  iconColor: const Color(0xFF1976D2),
                  height: topCardHeight,
                  watermarkIcon: Icons.public_rounded,
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        height: bottomRowHeight,
                        watermarkIcon: Icons.settings_suggest_rounded,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          // Saved Card
                          _buildLibraryCard(
                            context: context,
                            title: t.library_v2.saved_title,
                            description: t.library_v2.saved_desc,
                            icon: Icons.bookmark_border_rounded,
                            color: const Color(0xFFE0F2F1),
                            iconColor: const Color(0xFF00796B),
                            badgeCount: 12,
                            height: smallCardHeight,
                            watermarkIcon: Icons.collections_bookmark_rounded,
                          ),
                          const SizedBox(height: 16),
                          // Skills Card
                          _buildLibraryCard(
                            context: context,
                            title: t.library_v2.skills_title,
                            description: t.library_v2.skills_desc,
                            icon: Icons.auto_awesome_rounded,
                            color: const Color(0xFFFCE4EC),
                            iconColor: const Color(0xFFC2185B),
                            height: smallCardHeight,
                            watermarkIcon: Icons.auto_awesome_rounded,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
              ],
            ),
          );
        },
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
    required double height,
    int? badgeCount,
    required IconData watermarkIcon,
  }) {
    final bool isTall = height > 300;
    final bool isSmall = height < 200;
    
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
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
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            // Watermark Icon
            Positioned(
              top: -20,
              right: -20,
              child: Icon(
                watermarkIcon,
                size: isTall ? 180 : 140,
                color: iconColor.withValues(alpha: 0.08),
              ),
            ),
            if (isTall)
              Positioned(
                bottom: -30,
                left: -30,
                child: Icon(
                  watermarkIcon,
                  size: 160,
                  color: iconColor.withValues(alpha: 0.06),
                ),
              ),
            
            Padding(
              padding: EdgeInsets.all(isSmall ? 16.0 : 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(isSmall ? 8 : 10),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.8),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: iconColor.withValues(alpha: 0.1)),
                        ),
                        child: Icon(icon, color: iconColor, size: isSmall ? 22 : 28),
                      ),
                      if (badgeCount != null)
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
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.notoSans(
                      color: const Color(0xFF1E293B),
                      fontSize: isTall ? 26 : (isSmall ? 20 : 22),
                      fontWeight: FontWeight.w800,
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    maxLines: isSmall ? 2 : 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.notoSans(
                      color: const Color(0xFF64748B),
                      fontSize: isTall ? 15 : (isSmall ? 13 : 14),
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
    );
  }
}
