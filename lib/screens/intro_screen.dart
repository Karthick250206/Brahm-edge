import 'package:flutter/material.dart';
import 'privacy_info_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SOVEREIGN",
                    style: TextStyle(
                      color: Colors.orange.shade800,
                      letterSpacing: 4,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              // Logo
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.orange.shade800, width: 1),
                ),
                child: Center(
                  child: Icon(
                    Icons.wb_sunny_outlined,
                    size: 80,
                    color: Colors.orange.shade800,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "BrahmAI",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Serif',
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "BUILT IN INDIA - FOR THE WORLD",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  letterSpacing: 2,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              const Text(
                "India's first sovereign foundational model.\nYours. Entirely.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 32),
              // Page Indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(true),
                  _buildDot(false),
                  _buildDot(false),
                  _buildDot(false),
                ],
              ),
              const SizedBox(height: 40),
              // Begin Button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PrivacyInfoScreen(),
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
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Begin",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward),
                    ],
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
