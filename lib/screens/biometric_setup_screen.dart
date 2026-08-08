import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../security/providers/security_provider.dart';
import '../security/models/security_type.dart';

class BiometricSetupScreen extends StatefulWidget {
  const BiometricSetupScreen({super.key});

  @override
  State<BiometricSetupScreen> createState() => _BiometricSetupScreenState();
}

class _BiometricSetupScreenState extends State<BiometricSetupScreen> {
  @override
  Widget build(BuildContext context) {
    final securityProvider = context.watch<SecurityProvider>();
    const bgColor = Color(0xFF0B1019);
    const cardColor = Color(0xFF161B22);
    const accentColor = Color(0xFF00E5FF);
    const textSecondary = Color(0xFF8B949E);

    final bool appLockEnabled = securityProvider.isAppLockEnabled && 
                                securityProvider.selectedType == SecurityType.biometric;

    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          // Background Content
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.shield_outlined, color: accentColor, size: 24),
                            const SizedBox(width: 12),
                            const Text(
                              "Vault Security",
                              style: TextStyle(
                                color: accentColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Container(
                          width: 32,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(1),
                          ),
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          "Secure Lock Setup",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "Protect your vault with your preferred\nauthentication method.",
                          style: TextStyle(
                            color: textSecondary,
                            fontSize: 16,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 40),
                        _buildOptionCard(
                          icon: Icons.fingerprint,
                          title: "Device Biometrics",
                          subtitle: "Use FaceID or Fingerprint",
                          cardColor: cardColor,
                          accentColor: accentColor,
                          trailing: Switch(
                            value: appLockEnabled,
                            onChanged: (val) async {
                              if (!val) {
                                final result = await securityProvider.authenticate();
                                if (result.success) {
                                  await securityProvider.toggleAppLock(false);
                                }
                              }
                            },
                            activeColor: Colors.white,
                            activeTrackColor: accentColor,
                            inactiveThumbColor: Colors.grey.shade400,
                            inactiveTrackColor: Colors.grey.shade800,
                          ),
                        ),
                        const SizedBox(height: 16),
                        _buildOptionCard(
                          icon: Icons.pin_outlined,
                          title: "App-Specific PIN",
                          subtitle: "Set a unique 4-digit code",
                          cardColor: cardColor,
                          accentColor: accentColor,
                          trailing: const Icon(Icons.arrow_forward_ios, color: textSecondary, size: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // Dark Overlay and Centered Dialog
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.8),
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: const Color(0xFF1C2431),
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(color: Colors.white.withOpacity(0.1)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Shield Icon in square container
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: accentColor.withOpacity(0.2)),
                      ),
                      child: const Icon(Icons.shield_outlined, color: accentColor, size: 48),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      "Allow biometric access",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Use your fingerprint or device face recognition to unlock Brahm-edge",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF94A3B8),
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 48),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => Navigator.pop(context),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 18),
                              side: BorderSide(color: Colors.white.withOpacity(0.2)),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                            ),
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () async {
                              final result = await securityProvider.authenticate(type: SecurityType.biometric);
                              if (result.success) {
                                await securityProvider.setSecurityType(SecurityType.biometric);
                                if (mounted) Navigator.pop(context);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF4FD1C5), // Vibrant Teal
                              padding: const EdgeInsets.symmetric(vertical: 18),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                              elevation: 0,
                            ),
                            child: const Text(
                              "Allow biometrics",
                              style: TextStyle(color: Color(0xFF0B1019), fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: bgColor),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: bgColor,
          currentIndex: 3,
          selectedItemColor: accentColor,
          unselectedItemColor: textSecondary,
          selectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
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

  Widget _buildOptionCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color cardColor,
    required Color accentColor,
    required Widget trailing,
  }) {
    return Container(
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
          trailing,
        ],
      ),
    );
  }
}
