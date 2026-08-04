import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main_wrapper.dart';
import '../security/providers/security_provider.dart';

/// [ModelDownloadScreen] simulates the one-time setup of the on-device AI model.
/// It shows the download progress, configuration options, and additional language packs.
class ModelDownloadScreen extends StatefulWidget {
  const ModelDownloadScreen({super.key});

  @override
  State<ModelDownloadScreen> createState() => _ModelDownloadScreenState();
}

class _ModelDownloadScreenState extends State<ModelDownloadScreen> {
  bool _wifiOnly = true;

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
              const SizedBox(height: 40),
              // Main Headline
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Serif',
                  ),
                  children: [
                    TextSpan(text: "Bringing\nBrahmAI "),
                    TextSpan(
                      text: "home.",
                      style: TextStyle(
                        color: Color(0xFFD35400),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              // Subtitle
              const Text(
                "One-time. After this, we never touch your data again.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 32),

              // Main Model Card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFE8F3EF),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: const Color(0xFF00796B).withValues(alpha: 0.3)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "BrahmAI · base",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "2.0 B params · Q4_K_M · v0.9",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xFF00796B)),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.check, size: 12, color: Color(0xFF00796B)),
                              SizedBox(width: 4),
                              Text(
                                "on device",
                                style: TextStyle(
                                  color: Color(0xFF00796B),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Progress Bar
                    const LinearProgressIndicator(
                      value: 1.0,
                      backgroundColor: Colors.white,
                      color: Color(0xFF00796B),
                      minHeight: 6,
                    ),
                    const SizedBox(height: 12),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "1300 MB / 1300 MB",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Text(
                          "100%",
                          style: TextStyle(
                            color: Color(0xFF00796B),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Stats Badges
                    Row(
                      children: [
                        _buildStatBadge("~18 tok/s"),
                        const SizedBox(width: 8),
                        _buildStatBadge("~140 ms TTFT"),
                        const SizedBox(width: 8),
                        _buildStatBadge("14 languages"),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Settings Card
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Wi-Fi only",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "protect your mobile data",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Switch(
                      value: _wifiOnly,
                      onChanged: (val) => setState(() => _wifiOnly = val),
                      activeTrackColor: const Color(0xFFD35400),
                      activeThumbColor: Colors.white,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),
              const Text(
                "MORE LANGUAGES?",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              // Language Pack Chips
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _buildLangChip("हिन्दी ✓", "included", true),
                  _buildLangChip("+ தமிழ்", "120 MB", false),
                  _buildLangChip("+ বাংলা", "120 MB", false),
                ],
              ),

              const Spacer(),

              // Final CTA Button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () async {
                    // Mark as onboarded
                    await context.read<SecurityProvider>().setOnboarded(true);
                    
                    // Final entry into the app
                    if (mounted) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const MainWrapper()),
                        (route) => false,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD35400),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Open BrahmAI",
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

  Widget _buildStatBadge(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.black87, fontSize: 11),
      ),
    );
  }

  Widget _buildLangChip(String label, String sub, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF1E1E1E) : Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black87,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            sub,
            style: TextStyle(
              color: isSelected ? Colors.grey : Colors.grey.shade500,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
