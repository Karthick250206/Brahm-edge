import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
            // Calculate if the content fits in the static height
            // Base required height is around 680-700px
            final bool needsScaling = constraints.maxHeight < 720;

            return Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: 450, maxHeight: constraints.maxHeight),
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: needsScaling ? 12 : 24),
                    // Decorative Top Circle with Branded Icon
                    Container(
                      width: needsScaling ? 80 : 100,
                      height: needsScaling ? 80 : 100,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: tealColor.withValues(alpha: 0.05),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/zenteiq-ai-icon-enhanced.svg',
                          width: needsScaling ? 45 : 60,
                          height: needsScaling ? 45 : 60,
                        ),
                      ),
                    ),
                    SizedBox(height: needsScaling ? 20 : 40),

                    Text(
                      "Intelligence designed around you",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoSans(
                        color: const Color(0xFF1E293B),
                        fontSize: needsScaling ? 24 : 28,
                        fontWeight: FontWeight.w800,
                        height: 1.2,
                      ),
                    ),

                    SizedBox(height: needsScaling ? 24 : 48),
                    
                    // Features List
                    _buildFeatureRow(
                      icon: Icons.shield_outlined,
                      iconBg: const Color(0xFFE0F2F1),
                      title: "Privacy first",
                      description: "ZiqeX is designed to keep intelligence and your information close to your device.",
                      isSmall: needsScaling,
                    ),
                    SizedBox(height: needsScaling ? 20 : 32),
                    _buildFeatureRow(
                      icon: Icons.app_shortcut_outlined,
                      iconBg: const Color(0xFFE0F2F1),
                      title: "Intelligence in your hand",
                      description: "Everyday intelligence, available directly on your device.",
                      isSmall: needsScaling,
                    ),
                    SizedBox(height: needsScaling ? 20 : 32),
                    _buildFeatureRow(
                      icon: Icons.analytics_outlined,
                      iconBg: const Color(0xFFE0F2F1),
                      title: "Your data. Your control.",
                      description: "Choose what is kept, manage what is stored, and delete what you no longer need.",
                      isSmall: needsScaling,
                    ),
                    SizedBox(height: needsScaling ? 20 : 32),
                    _buildFeatureRow(
                      icon: Icons.language_outlined,
                      iconBg: const Color(0xFFE0F2F1),
                      title: "Designed for every place",
                      description: "Built for different languages, devices, and ways people use technology.",
                      isSmall: needsScaling,
                    ),
                    
                    const Spacer(),
                    
                    SizedBox(height: needsScaling ? 16 : 24),
                    Text(
                      "Your intelligence. Your device. Your control.",
                      style: GoogleFonts.notoSans(
                        color: tealColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: needsScaling ? 12 : 24),
                    
                    // CTA Button
                    SizedBox(
                      width: double.infinity,
                      height: needsScaling ? 56 : 64,
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
                            borderRadius: BorderRadius.circular(32),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          "Set up your ZiqeX",
                          style: GoogleFonts.notoSans(
                            fontSize: needsScaling ? 16 : 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: needsScaling ? 20 : 32),
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
    bool isSmall = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: iconBg,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: const Color(0xFF004D40), size: isSmall ? 20 : 24),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.notoSans(
                  color: const Color(0xFF1E293B),
                  fontSize: isSmall ? 15 : 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: GoogleFonts.notoSans(
                  color: const Color(0xFF64748B),
                  fontSize: isSmall ? 13 : 14,
                  height: 1.4,
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
