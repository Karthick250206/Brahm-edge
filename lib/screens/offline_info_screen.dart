import 'package:flutter/material.dart';
import 'language_selection_screen.dart';

/// [OfflineInfoScreen] acts as an informational onboarding page emphasizing
/// the offline-first functionality of the BrahmAI companion ("The companion that doesn't need signal").
/// It highlights usage scenarios like flights, remote villages, and borders, and provides a
/// call-to-action button to move forward into the [LanguageSelectionScreen].
class OfflineInfoScreen extends StatelessWidget {
  const OfflineInfoScreen({super.key});

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
                "ANYWHERE - ANYTIME",
                style: TextStyle(
                  color: Colors.orange.shade800,
                  letterSpacing: 2,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),

              // Offline Use Case Icons Row (Flights, Villages, Borders)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildIconItem(Icons.airplanemode_active, "flights"),
                  const SizedBox(width: 16),
                  _buildIconItem(Icons.terrain, "villages"),
                  const SizedBox(width: 16),
                  _buildIconItem(Icons.security, "border"),
                ],
              ),
              const Spacer(),

              // Main Headline Title ("The companion that doesn't need signal.")
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
                    const TextSpan(text: "The companion that\ndoesn't need "),
                    TextSpan(
                      text: "signal.",
                      style: TextStyle(
                        color: Colors.orange.shade800,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Subtext Describing Offline Readiness
              const Text(
                "Flights. Trains. Villages. Borders.\nBrahmAI is with you. Offline-first.",
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
                  _buildDot(false),
                  _buildDot(false),
                  _buildDot(true), // Highlights active slide position (index 3)
                ],
              ),
              const SizedBox(height: 32),

              // Primary Full-Width Action Button to Advance to Language Setup
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the Language Selection onboarding sequence
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LanguageSelectionScreen(),
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
                    "Get started",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // Setup Time Estimate Label
              Text(
                "~3 MINS · ONE-TIME SETUP",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 10,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 24),

              // Secondary Back Text Navigation Button
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  "back",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  /// Helper widget to build circular container icons representing offline scenarios
  Widget _buildIconItem(IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade800, width: 1),
          ),
          child: Icon(icon, color: Colors.white, size: 24),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: Colors.grey.shade600, fontSize: 10),
        ),
      ],
    );
  }

  /// Helper widget to build responsive page indicator dots
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