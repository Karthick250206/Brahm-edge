import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../i18n/strings.g.dart';
import '../security/providers/security_provider.dart';
import 'pin_setup_screen.dart';

class PinManagementScreen extends StatelessWidget {
  const PinManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = Translations.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // Custom Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: colorScheme.onSurface),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    t.pin_mgmt.appBar,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      color: colorScheme.primary,
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
                      context,
                      icon: Icons.edit_outlined,
                      title: t.pin_mgmt.change_title,
                      subtitle: t.pin_mgmt.change_sub,
                      cardColor: colorScheme.surfaceContainerLow,
                      accentColor: colorScheme.primary,
                      onTap: () {
                        // 1. Verify Old PIN
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PinSetupScreen(mode: PinMode.verify),
                          ),
                        ).then((verified) {
                          if (!context.mounted) return;
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
                      context,
                      icon: Icons.delete_outline,
                      title: t.pin_mgmt.remove_title,
                      subtitle: t.pin_mgmt.remove_sub,
                      cardColor: colorScheme.surfaceContainerLow,
                      accentColor: colorScheme.error,
                      onTap: () {
                        // Verify before deletion
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PinSetupScreen(mode: PinMode.verify),
                          ),
                        ).then((verified) async {
                          if (!context.mounted) return;
                          if (verified == true) {
                            await context.read<SecurityProvider>().toggleAppLock(false);
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(t.pin_mgmt.snack_removed)),
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 3,
        onTap: (index) {
          if (index != 3) Navigator.pop(context);
        },
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.home_outlined), label: t.home),
          BottomNavigationBarItem(icon: const Icon(Icons.chat_bubble_outline), label: t.chat),
          BottomNavigationBarItem(icon: const Icon(Icons.library_books_outlined), label: t.library),
          BottomNavigationBarItem(icon: const Icon(Icons.person), label: t.you),
        ],
      ),
    );
  }

  Widget _buildActionCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Color cardColor,
    required Color accentColor,
    required VoidCallback onTap,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: colorScheme.outline.withValues(alpha: 0.05)),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: accentColor.withValues(alpha: 0.05),
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
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: colorScheme.onSurfaceVariant, size: 16),
          ],
        ),
      ),
    );
  }
}
