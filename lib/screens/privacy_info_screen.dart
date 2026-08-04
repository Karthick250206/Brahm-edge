import 'package:flutter/material.dart';
import 'circles_privacy_screen.dart';

/// [PrivacyInfoScreen] serves as an informational onboarding page emphasizing
/// the on-device architecture of BrahmAI ("Nothing leaves your device").
/// It highlights local-first security ("No server. No cloud. No log.") and provides
/// navigation buttons to move backward or advance to the [CirclesPrivacyScreen].
class PrivacyInfoScreen extends StatelessWidget {
  const PrivacyInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 40),

              // Top Eyebrow Section Label
              Text(
                "ON THIS DEVICE",
                style: TextStyle(
                  color: Colors.orange.shade800,
                  letterSpacing: 2,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),

              // Phone Illustration Graphic with Concentric Model Indicator Circles
              Center(
                child: Container(
                  width: 100,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade800, width: 1.5),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Outer Concentric circle
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.shade800, width: 1),
                        ),
                      ),
                      // Inner Concentric circle
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.orange.shade800, width: 1),
                        ),
                      ),
                      // Center Core Dot
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.orange.shade800,
                          shape: BoxShape.circle,
                        ),
                      ),
                      // Explanatory graphic label text
                      Positioned(
                        top: 20,
                        child: Text(
                          "MODEL  LIVES  HERE",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 6,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),

              // Main Headline Title ("Nothing leaves your device.")
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Serif',
                  ),
                  children: [
                    const TextSpan(text: "Nothing leaves\nyour "),
                    TextSpan(
                      text: "device.",
                      style: TextStyle(
                        color: Colors.orange.shade800,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Subtext Architecture Summary
              const Text(
                "Not a policy. The architecture itself.\nNo server. No cloud. No log.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  height: 1.6,
                ),
              ),
              const Spacer(),

              // Carousel Page Position Indicator Dots
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(false),
                  _buildDot(true), // Highlights active slide position (index 1)
                  _buildDot(false),
                  _buildDot(false),
                ],
              ),
              const SizedBox(height: 40),

              // Bottom Action Buttons Row (Back Navigation and Continue)
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 56,
                      child: OutlinedButton(
                        onPressed: () => Navigator.pop(context),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.grey.shade800),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "Back",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SizedBox(
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate forward to the Circles Privacy Screen sequence
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CirclesPrivacyScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE67E22),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          "Continue",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  /// Helper widget to build responsive page pagination indicator dots
  Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 12 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFE67E22) : Colors.grey.shade700,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}