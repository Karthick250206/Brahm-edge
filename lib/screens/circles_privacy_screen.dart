import 'package:flutter/material.dart';
import 'offline_info_screen.dart';

/// [CirclesPrivacyScreen] serves as an onboarding/educational screen outlining
/// the five tiered levels of privacy models available in the app (ranging from
/// high-security operational data down to daily personal journals).
class CirclesPrivacyScreen extends StatelessWidget {
  const CirclesPrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              // Top Eyebrow Section Label
              Text(
                "PRIVATE BY DESIGN",
                style: TextStyle(
                  color: Colors.orange.shade800,
                  letterSpacing: 2,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // Main Headline Title
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Serif',
                  ),
                  children: [
                    const TextSpan(text: "Five circles\nof "),
                    TextSpan(
                      text: "privacy.",
                      style: TextStyle(
                        color: Colors.orange.shade800,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Descriptive Subtext explaining dynamic model scaling
              const Text(
                "The model adapts to the weight of what you're sharing — from a passing thought to a state secret.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 32),

              // Scrollable List detailing the 5 Privacy Tiers
              Expanded(
                child: ListView(
                  children: [
                    _buildCircleItem("1", "Operational", "Defence - intel - no-net zones", false),
                    _buildCircleItem("2", "Personal counsel", "Mental health - addiction - abuse", false),
                    _buildCircleItem("3", "Workplace", "Harassment - reputation - ethics", false),
                    _buildCircleItem("4", "Culture & family", "Grief - body - social pressure", false),
                    _buildCircleItem("5", "Daily journal", "Decisions - relationships - life", true),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Carousel Page Position Indicator Dots
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(false),
                  _buildDot(false),
                  _buildDot(true), // Highlights current active slide position
                  _buildDot(false),
                ],
              ),
              const SizedBox(height: 40),

              // Bottom Action Buttons (Back navigation and Forward progress)
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
                          // Navigate to the next offline informational screen in the flow
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OfflineInfoScreen(),
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

  /// Helper widget to build individual privacy tier rows with custom highlights
  Widget _buildCircleItem(String number, String title, String subtitle, bool isHighlighted) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
        border: isHighlighted ? Border.all(color: Colors.orange.shade800.withOpacity(0.5)) : null,
      ),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isHighlighted ? Colors.orange.shade800 : Colors.grey.shade800,
            ),
            child: Center(
              child: Text(
                number,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Helper widget to build responsive page pagination dots
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