import 'package:flutter/material.dart';
import 'model_download_screen.dart';

/// [PromiseScreen] introduces the capabilities and limitations of the BrahmAI model.
/// It acts as a transparency page during the onboarding process to set user expectations.
class PromiseScreen extends StatelessWidget {
  const PromiseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F0), // Theme-consistent light background
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Back Button to return to Pillar Selection
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios, size: 20),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
              const SizedBox(height: 32),
              // Headline with serif font and brand orange color
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Serif',
                  ),
                  children: [
                    TextSpan(text: "A small,\nhonest "),
                    TextSpan(
                      text: "promise.",
                      style: TextStyle(
                        color: Color(0xFFD35400),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Subtext explaining model scale
              const Text(
                "BrahmAI at 2B parameters isn't ChatGPT — and isn't trying to be.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 24),
              // Prominent brand divider
              Container(
                width: double.infinity,
                height: 6,
                decoration: BoxDecoration(
                  color: const Color(0xFFD35400),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              const SizedBox(height: 32),
              
              // "WHAT I AM" Section (Capabilities)
              _buildPromiseCard(
                title: "WHAT I AM",
                titleColor: const Color(0xFF00796B),
                bgColor: const Color(0xFFE8F3EF),
                borderColor: const Color(0xFF00796B).withOpacity(0.3),
                items: [
                  "your private thinking partner",
                  "fluent in your script & voice",
                  "always offline, always yours",
                ],
              ),
              
              const SizedBox(height: 16),
              
              // "WHAT I AM NOT" Section (Limitations)
              _buildPromiseCard(
                title: "WHAT I AM NOT",
                titleColor: const Color(0xFFA93226),
                bgColor: const Color(0xFFFCE9E0),
                borderColor: const Color(0xFFA93226).withOpacity(0.3),
                items: [
                  "an oracle of all facts",
                  "a doctor, lawyer or therapist",
                  "cloud-scale or live-internet",
                ],
              ),
              
              const Spacer(),
              
              // Transparency disclaimer
              const Center(
                child: Text(
                  "I'll always tell you when I don't know.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                  ),
                ),
              ),
              
              const SizedBox(height: 32),
              
              // Action button to proceed to model download
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to Model Download Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ModelDownloadScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD35400),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    "I understand",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  /// Helper widget to build the capability/limitation cards with bullets.
  Widget _buildPromiseCard({
    required String title,
    required Color titleColor,
    required Color bgColor,
    required Color borderColor,
    required List<String> items,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: titleColor,
              fontSize: 11,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ...items.map((item) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("• ", style: TextStyle(fontSize: 16, color: Colors.grey)),
                Expanded(
                  child: Text(
                    item,
                    style: const TextStyle(color: Colors.black87, fontSize: 15, height: 1.3),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
