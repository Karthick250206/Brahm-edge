import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../security/providers/security_provider.dart';
import 'pillars_grid_selection_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const tealColor = Color(0xFF00444F); // Exact teal from image
    const lightBgColor = Color(0xFFF7FAFF); // Subtlest blue-white tint

    return Scaffold(
      backgroundColor: lightBgColor,
      body: Stack(
        children: [
          // Subtlest Grid Background
          Positioned.fill(
            child: CustomPaint(
              painter: GridPainter(),
            ),
          ),
          
          // Precisely placed decorative dots
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            left: MediaQuery.of(context).size.width * 0.28,
            child: _buildSoftDot(12, const Color(0xFF94A3B8).withOpacity(0.3)),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            right: MediaQuery.of(context).size.width * 0.25,
            child: _buildSoftDot(8, const Color(0xFF94A3B8).withOpacity(0.15)),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.3,
            left: MediaQuery.of(context).size.width * 0.38,
            child: _buildSoftDot(10, const Color(0xFF94A3B8).withOpacity(0.15)),
          ),

          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                // Refined "BRAHM EDGE" label
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: const Color(0xFFE2E8F0), width: 0.8),
                      ),
                      child: Text(
                        "BRAHM EDGE",
                        style: GoogleFonts.notoSans(
                          color: const Color(0xFF475569),
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                ),
                
                const Spacer(flex: 2),

                // Multi-layered Central Logo
                Container(
                  width: 104,
                  height: 104,
                  decoration: BoxDecoration(
                    color: tealColor,
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: tealColor.withOpacity(0.25),
                        blurRadius: 25,
                        offset: const Offset(0, 12),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Container(
                      width: 72,
                      height: 72,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Container(
                          width: 56,
                          height: 56,
                          decoration: const BoxDecoration(
                            color: tealColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.psychology_outlined, color: Colors.white, size: 36),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 56),

                // High-Fidelity Welcome Card
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 48),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF64748B).withOpacity(0.08),
                          blurRadius: 40,
                          offset: const Offset(0, 15),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        // Corner brackets (Slightly offset from corners)
                        Positioned(top: 0, left: 0, child: _buildCornerBracket(top: true, left: true)),
                        Positioned(top: 0, right: 0, child: _buildCornerBracket(top: true, left: false)),
                        Positioned(bottom: 0, left: 0, child: _buildCornerBracket(top: false, left: true)),
                        Positioned(bottom: 0, right: 0, child: _buildCornerBracket(top: false, left: false)),
                        
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Welcome to\nBrahm Edge",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.notoSans(
                                color: const Color(0xFF1E293B),
                                fontSize: 34,
                                fontWeight: FontWeight.w800,
                                height: 1.1,
                              ),
                            ),
                            const SizedBox(height: 18),
                            Container(
                              width: 54,
                              height: 2.5,
                              decoration: BoxDecoration(
                                color: const Color(0xFFCBD5E1),
                                borderRadius: BorderRadius.circular(1.25),
                              ),
                            ),
                            const SizedBox(height: 28),
                            Text(
                              "Designed and envisioned to be your\nprivate confidant, always.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.notoSans(
                                color: const Color(0xFF64748B),
                                fontSize: 16.5,
                                height: 1.5,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const Spacer(flex: 3),

                // Branded Bottom Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
                  child: SizedBox(
                    width: double.infinity,
                    height: 68,
                    child: ElevatedButton(
                      onPressed: () async {
                        final provider = context.read<SecurityProvider>();
                        await provider.setFirstLaunch(false);
                        if (context.mounted) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const PillarsGridSelectionScreen()),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: tealColor,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 6,
                        shadowColor: tealColor.withOpacity(0.35),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "BEGIN ONBOARDING",
                            style: GoogleFonts.notoSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.2,
                            ),
                          ),
                          const SizedBox(width: 14),
                          const Icon(Icons.arrow_forward_rounded, size: 22),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSoftDot(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildCornerBracket({required bool top, required bool left}) {
    const length = 20.0;
    const thickness = 1.0;
    const color = Color(0xFFD1D5DB); // Subtle grey from image

    return Container(
      width: length,
      height: length,
      decoration: BoxDecoration(
        border: Border(
          top: top ? const BorderSide(color: color, width: thickness) : BorderSide.none,
          bottom: !top ? const BorderSide(color: color, width: thickness) : BorderSide.none,
          left: left ? const BorderSide(color: color, width: thickness) : BorderSide.none,
          right: !left ? const BorderSide(color: color, width: thickness) : BorderSide.none,
        ),
      ),
    );
  }
}

class GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF64748B).withOpacity(0.04)
      ..strokeWidth = 0.8;

    const step = 45.0;

    for (double i = 0; i < size.width; i += step) {
      canvas.drawLine(Offset(i, 0), Offset(i, size.height), paint);
    }
    for (double i = 0; i < size.height; i += step) {
      canvas.drawLine(Offset(0, i), Offset(size.width, i), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
