import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../security/providers/security_provider.dart';
import 'intelligence_info_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Stack(
        children: [
          // Subtlest Grid Background
          Positioned.fill(
            child: CustomPaint(
              painter: GridPainter(color: theme.colorScheme.onSurface.withValues(alpha: 0.04)),
            ),
          ),

          // Precisely placed decorative dots
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            left: MediaQuery.of(context).size.width * 0.28,
            child: _buildSoftDot(12, theme.colorScheme.onSurface.withValues(alpha: 0.1)),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            right: MediaQuery.of(context).size.width * 0.25,
            child: _buildSoftDot(8, theme.colorScheme.onSurface.withValues(alpha: 0.05)),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.3,
            left: MediaQuery.of(context).size.width * 0.38,
            child: _buildSoftDot(10, theme.colorScheme.onSurface.withValues(alpha: 0.05)),
          ),

          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 12),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: theme.colorScheme.onSurfaceVariant),
                      onPressed: () => Navigator.pop(context),
                    ),
                    // Refined "ZiqeX" label
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: theme.colorScheme.outline.withValues(alpha: 0.2), width: 0.8),
                      ),
                      child: Text(
                        "ZiqeX",
                        style: GoogleFonts.notoSans(
                          color: theme.colorScheme.onSurfaceVariant,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ],
                ),

                const Spacer(flex: 2),

                // Branded Central Logo
                Center(
                  child: SvgPicture.asset(
                    'assets/icons/app_icon_light.svg',
                    width: 120,
                    height: 120,
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
                      color: theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: theme.colorScheme.onSurface.withValues(alpha: 0.04),
                          blurRadius: 40,
                          offset: const Offset(0, 15),
                        ),
                      ],
                      border: Border.all(color: theme.colorScheme.outline.withValues(alpha: 0.1)),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Corner brackets
                        Positioned(top: 0, left: 0, child: _buildCornerBracket(top: true, left: true, color: theme.colorScheme.outline)),
                        Positioned(top: 0, right: 0, child: _buildCornerBracket(top: true, left: false, color: theme.colorScheme.outline)),
                        Positioned(bottom: 0, left: 0, child: _buildCornerBracket(top: false, left: true, color: theme.colorScheme.outline)),
                        Positioned(bottom: 0, right: 0, child: _buildCornerBracket(top: false, left: false, color: theme.colorScheme.outline)),

                        Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Meet ZiqeX",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.notoSans(
                                  color: theme.colorScheme.primary,
                                  fontSize: 34,
                                  fontWeight: FontWeight.w800,
                                  height: 1.1,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                "Intelligence at the edge",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.notoSans(
                                  color: theme.colorScheme.onSurface,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  height: 1.1,
                                ),
                              ),
                              const SizedBox(height: 18),
                              Container(
                                width: 54,
                                height: 2.5,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.outline.withValues(alpha: 0.5),
                                  borderRadius: BorderRadius.circular(1.25),
                                ),
                              ),
                              const SizedBox(height: 28),
                              Text(
                                "Private and Edge AI\nby ZenteiQ",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.notoSans(
                                  color: theme.colorScheme.onSurfaceVariant,
                                  fontSize: 22,
                                  height: 1.5,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
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
                            MaterialPageRoute(builder: (context) => const IntelligenceInfoScreen()),
                          );
                        }
                      },
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

  Widget _buildCornerBracket({required bool top, required bool left, required Color color}) {
    const length = 20.0;
    const thickness = 1.0;

    return Container(
      width: length,
      height: length,
      decoration: BoxDecoration(
        border: Border(
          top: top ? BorderSide(color: color, width: thickness) : BorderSide.none,
          bottom: !top ? BorderSide(color: color, width: thickness) : BorderSide.none,
          left: left ? BorderSide(color: color, width: thickness) : BorderSide.none,
          right: !left ? BorderSide(color: color, width: thickness) : BorderSide.none,
        ),
      ),
    );
  }
}

class GridPainter extends CustomPainter {
  final Color color;
  GridPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
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

