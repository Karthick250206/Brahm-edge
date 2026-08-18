import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../i18n/strings.g.dart';
import 'pillars_grid_selection_screen.dart';

class IntelligenceInfoScreen extends StatelessWidget {
  const IntelligenceInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tealColor = theme.colorScheme.primary;
    final lightBgColor = theme.scaffoldBackgroundColor;

    return Scaffold(
      backgroundColor: lightBgColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Calculate a scaling factor based on a standard height of 800dp
            // We clamp it to ensure it doesn't get TOO small or too large.
            final double scale = (constraints.maxHeight / 800).clamp(0.7, 1.0);
            
            return Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: 450, maxHeight: constraints.maxHeight),
                padding: EdgeInsets.symmetric(horizontal: 24.0 * scale),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20 * scale),
                    
                    // Decorative Top Circle with Branded Icon
                    Container(
                      width: 100 * scale,
                      height: 100 * scale,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: tealColor.withValues(alpha: 0.05),
                            blurRadius: 20 * scale,
                            offset: Offset(0, 10 * scale),
                          ),
                        ],
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/zenteiq-ai-icon-enhanced.svg',
                          width: 55 * scale,
                          height: 55 * scale,
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 30 * scale),

                    Text(
                      t.info.title,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoSans(
                        color: const Color(0xFF1E293B),
                        fontSize: 28 * scale,
                        fontWeight: FontWeight.w800,
                        height: 1.1,
                      ),
                    ),

                    SizedBox(height: 32 * scale),
                    
                    // Features List
                    _buildFeatureRow(
                      icon: Icons.shield_outlined,
                      iconBg: const Color(0xFFE0F2F1),
                      title: t.info.privacy_title,
                      description: t.info.privacy_desc,
                      scale: scale,
                    ),
                    SizedBox(height: 24 * scale),
                    _buildFeatureRow(
                      icon: Icons.app_shortcut_outlined,
                      iconBg: const Color(0xFFE0F2F1),
                      title: t.info.hand_title,
                      description: t.info.hand_desc,
                      scale: scale,
                    ),
                    SizedBox(height: 24 * scale),
                    _buildFeatureRow(
                      icon: Icons.analytics_outlined,
                      iconBg: const Color(0xFFE0F2F1),
                      title: t.info.control_title,
                      description: t.info.control_desc,
                      scale: scale,
                    ),
                    SizedBox(height: 24 * scale),
                    _buildFeatureRow(
                      icon: Icons.language_outlined,
                      iconBg: const Color(0xFFE0F2F1),
                      title: t.info.place_title,
                      description: t.info.place_desc,
                      scale: scale,
                    ),
                    
                    const Spacer(),
                    
                    Text(
                      t.info.footer,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoSans(
                        color: tealColor,
                        fontSize: 13 * scale,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: 16 * scale),
                    
                    // CTA Button
                    SizedBox(
                      width: double.infinity,
                      height: 60 * scale,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const PillarsGridSelectionScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: tealColor,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32 * scale),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          t.info.setup,
                          style: GoogleFonts.notoSans(
                            fontSize: 17 * scale,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24 * scale),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildFeatureRow({
    required IconData icon,
    required Color iconBg,
    required String title,
    required String description,
    required double scale,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10 * scale),
          decoration: BoxDecoration(
            color: iconBg,
            borderRadius: BorderRadius.circular(10 * scale),
          ),
          child: Icon(icon, color: const Color(0xFF004D40), size: 24 * scale),
        ),
        SizedBox(width: 16 * scale),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.notoSans(
                  color: const Color(0xFF1E293B),
                  fontSize: 16 * scale,
                  fontWeight: FontWeight.w700,
                  height: 1.1,
                ),
              ),
              SizedBox(height: 4 * scale),
              Text(
                description,
                style: GoogleFonts.notoSans(
                  color: const Color(0xFF64748B),
                  fontSize: 13.5 * scale,
                  height: 1.3,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
