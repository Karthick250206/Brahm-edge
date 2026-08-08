import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../security/providers/security_provider.dart';
import 'pin_setup_screen.dart';

class PinManagementScreen extends StatelessWidget {
  const PinManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFF0B1019);
    const cardColor = Color(0xFF161B22);
    const accentColor = Color(0xFF00E5FF);
    const textSecondary = Color(0xFF8B949E);

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
                    "App-Specific PIN",
                    style: TextStyle(
                      color: accentColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 32),
                    _buildActionCard(
                      icon: Icons.edit_outlined,
                      title: "Change PIN",
                      subtitle: "Update your 4-digit Brahm-edge security code",
                      cardColor: cardColor,
                      accentColor: accentColor,
                      onTap: () {
                        // 1. Verify Old PIN
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PinSetupScreen(mode: PinMode.verify),
                          ),
                        ).then((verified) {
                          // 2. If success, navigate to Setup New PIN
                          if (verified == true) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PinSetupScreen(mode: PinMode.setup),
                              ),
                            );
                          }
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    _buildActionCard(
                      icon: Icons.delete_outline,
                      title: "Remove PIN",
                      subtitle: "Turn off PIN access for Brahm-edge",
                      cardColor: cardColor,
                      accentColor: Colors.redAccent,
                      onTap: () {
                        // Verify before deletion
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PinSetupScreen(mode: PinMode.verify),
                          ),
                        ).then((verified) async {
                          if (verified == true) {
                            await context.read<SecurityProvider>().toggleAppLock(false);
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("PIN removed successfully")),
                              );
                              Navigator.pop(context); // Go back to Security screen
                            }
                          }
                        });
                      },
                    ),
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
          currentIndex: 3,
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

  Widget _buildActionCard({
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
