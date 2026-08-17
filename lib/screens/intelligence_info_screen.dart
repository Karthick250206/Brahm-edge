import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pillars_grid_selection_screen.dart';

class IntelligenceInfoScreen extends StatelessWidget {
  const IntelligenceInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const tealColor = Color(0xFF00444F);
    const lightBgColor = Color(0xFFF7FAFF);

    return Scaffold(
      backgroundColor: lightBgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 24),
              // Decorative Top Circle with Branded Icon
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              
              Text(
                "Intelligence designed around you",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSans(
                  color: const Color(0xFF1E293B),
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  height: 1.2,
                ),
              ),

              const SizedBox(height: 48),
              
              // Features List
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    _buildFeatureRow(
                      icon: Icons.shield_outlined,
                      iconBg: const Color(0xFFE0F2F1),
                      title: "Privacy first",
                      description: "ZiqeX is designed to keep intelligence and your information close to your device.",
                    ),
                    const SizedBox(height: 32),
                    _buildFeatureRow(
                      icon: Icons.app_shortcut_outlined,
                      iconBg: const Color(0xFFE0F2F1),
                      title: "Intelligence in your hand",
                      description: "Everyday intelligence, available directly on your device.",
                    ),
                    const SizedBox(height: 32),
                    _buildFeatureRow(
                      icon: Icons.analytics_outlined,
                      iconBg: const Color(0xFFE0F2F1),
                      title: "Your data. Your control.",
                      description: "Choose what is kept, manage what is stored, and delete what you no longer need.",
                    ),
                    const SizedBox(height: 32),
                    _buildFeatureRow(
                      icon: Icons.language_outlined,
                      iconBg: const Color(0xFFE0F2F1),
                      title: "Designed for every place",
                      description: "Built for different languages, devices, and ways people use technology.",
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 24),
              Text(
                "Your intelligence. Your device. Your control.",
                style: GoogleFonts.notoSans(
                  color: tealColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 24),
              
              // CTA Button
              SizedBox(
                width: double.infinity,
                height: 64,
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
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureRow({
    required IconData icon,
    required Color iconBg,
    required String title,
    required String description,
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
          child: Icon(icon, color: const Color(0xFF004D40), size: 24),
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
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: GoogleFonts.notoSans(
                  color: const Color(0xFF64748B),
                  fontSize: 14,
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
