import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../security/providers/security_provider.dart';
import '../security/models/security_type.dart';
import 'pin_setup_screen.dart';
import 'biometric_setup_screen.dart';
import 'pin_management_screen.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  @override
  Widget build(BuildContext context) {
    final securityProvider = context.watch<SecurityProvider>();
    const bgColor = Color(0xFF0B1019);
    const cardColor = Color(0xFF161B22);
    const accentColor = Color(0xFF00E5FF);
    const textSecondary = Color(0xFF8B949E);

    final bool globalSecurityEnabled = securityProvider.isAppLockEnabled;
    final bool hasPin = securityProvider.selectedType == SecurityType.pin;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            // Custom Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "App Security",
                    style: TextStyle(
                      color: accentColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.notifications_outlined, color: Color(0xFF8B949E)),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    _buildSectionTitle("GLOBAL PROTECTION", accentColor),
                    const SizedBox(height: 16),
                    // Global Toggle Card
                    GestureDetector(
                      onTap: () => securityProvider.toggleAppLock(!globalSecurityEnabled),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.white.withOpacity(0.05)),
                        ),
                        child: Row(
                          children: [
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "App lock",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Require authentication to open Brahm-edge",
                                    style: TextStyle(
                                      color: textSecondary,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Transform.scale(
                              scale: 0.8,
                              child: IgnorePointer(
                                child: Switch(
                                  value: globalSecurityEnabled,
                                  onChanged: (_) {},
                                  activeColor: Colors.white,
                                  activeTrackColor: const Color(0xFF4DB6AC),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 32),
                    _buildSectionTitle("AUTHENTICATION METHODS", accentColor),
                    const SizedBox(height: 16),

                    // Device Biometrics Card
                    _buildMethodCard(
                      icon: Icons.lock_outline,
                      title: "Device biometrics",
                      subtitle: "Unlock instantly with your fingerprint or face",
                      cardColor: cardColor,
                      accentColor: accentColor,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BiometricSetupScreen()),
                        );
                      },
                    ),
                    const SizedBox(height: 12),

                    // App-Specific PIN Card
                    _buildMethodCard(
                      icon: Icons.grid_view_rounded,
                      title: "Brahm-edge PIN",
                      subtitle: hasPin ? "PIN is active" : "Set a unique 4-digit code to unlock the app",
                      cardColor: cardColor,
                      accentColor: accentColor,
                      onTap: () {
                        if (hasPin) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const PinManagementScreen()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const PinSetupScreen()),
                          );
                        }
                      },
                    ),

                    const SizedBox(height: 48),

                    // Why use App Security Box
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: cardColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: const Color(0xFF00E5FF).withOpacity(0.1)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: accentColor.withOpacity(0.5)),
                                    ),
                                    child: Icon(Icons.info_outline, color: accentColor, size: 16),
                                  ),
                                  const SizedBox(width: 12),
                                  const Text(
                                    "Too many incorrect attempts",
                                    style: TextStyle(
                                      color: accentColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                "If an incorrect PIN is entered 10 times, Brahm-edge will automatically reset. All data saved on this device will be permanently deleted",
                                style: TextStyle(
                                  color: textSecondary,
                                  fontSize: 14,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -20,
                          bottom: -20,
                          child: Opacity(
                            opacity: 0.03,
                            child: Icon(Icons.shield_outlined, size: 120, color: accentColor),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 48),
                    // Centered Shield Icon
                    const Center(
                      child: Icon(Icons.shield_outlined, color: Colors.white10, size: 48),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: bgColor,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: bgColor,
          currentIndex: 3, // "You" tab
          selectedItemColor: accentColor,
          unselectedItemColor: textSecondary,
          selectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          onTap: (index) {
            if (index != 3) Navigator.pop(context);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.library_books_outlined), label: "Library"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "You"),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, Color color) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: color,
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: 1,
            color: Colors.white.withOpacity(0.1),
          ),
        ),
      ],
    );
  }

  Widget _buildMethodCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color cardColor,
    required Color accentColor,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: accentColor, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Color(0xFF8B949E),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Color(0xFF8B949E), size: 16),
          ],
        ),
      ),
    );
  }
}
