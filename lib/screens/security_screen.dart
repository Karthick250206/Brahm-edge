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
  Future<bool> _handleBackPress() async {
    final securityProvider = context.read<SecurityProvider>();
    final theme = Theme.of(context);
    
    // If App Lock is enabled but no method is set, warn and disable
    if (securityProvider.isAppLockEnabled && securityProvider.selectedType == SecurityType.none) {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: theme.colorScheme.surface,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Text(
            "Security Setup Incomplete",
            style: theme.textTheme.titleLarge?.copyWith(
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            "You have enabled App Lock but haven't set a PIN or Biometrics. App Lock will be disabled until a method is configured.",
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                "GOT IT",
                style: theme.textTheme.labelLarge?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
      
      // Auto-disable the lock
      await securityProvider.toggleAppLock(false);
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final securityProvider = context.watch<SecurityProvider>();
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final bool globalSecurityEnabled = securityProvider.isAppLockEnabled;
    final bool hasPin = securityProvider.selectedType == SecurityType.pin;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;
        final navigator = Navigator.of(context);
        if (await _handleBackPress()) {
          navigator.pop();
        }
      },
      child: Scaffold(
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
                      onPressed: () async {
                        final navigator = Navigator.of(context);
                        if (await _handleBackPress()) {
                          navigator.pop();
                        }
                      },
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "App Security",
                      style: theme.textTheme.headlineSmall?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Icon(Icons.notifications_outlined, color: colorScheme.onSurfaceVariant),
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
                      _buildSectionTitle(context, "GLOBAL PROTECTION", colorScheme.primary),
                      const SizedBox(height: 16),
                      // Global Toggle Card
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: colorScheme.surfaceContainerLow,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: colorScheme.outline.withValues(alpha: 0.1)),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "App lock",
                                    style: theme.textTheme.titleMedium?.copyWith(
                                      color: colorScheme.onSurface,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    "Require authentication to open ZiqeX",
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: colorScheme.onSurfaceVariant,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Switch(
                              value: globalSecurityEnabled,
                              onChanged: (val) => securityProvider.toggleAppLock(val),
                              activeThumbColor: Colors.white,
                              activeTrackColor: colorScheme.primary,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 32),
                      _buildSectionTitle(context, "AUTHENTICATION METHODS", colorScheme.primary),
                      const SizedBox(height: 16),

                      // Device Biometrics Card
                      _buildMethodCard(
                        context,
                        icon: Icons.lock_outline,
                        title: "Device biometrics",
                        subtitle: "Unlock instantly with your fingerprint or face",
                        cardColor: colorScheme.surfaceContainerLow,
                        accentColor: colorScheme.primary,
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
                        context,
                        icon: Icons.grid_view_rounded,
                        title: "ZiqeX PIN",
                        subtitle: hasPin ? "PIN is active" : "Set a unique 4-digit code to unlock the app",
                        cardColor: colorScheme.surfaceContainerLow,
                        accentColor: colorScheme.primary,
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
                              color: colorScheme.surfaceContainerLow.withValues(alpha: 0.3),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: colorScheme.primary.withValues(alpha: 0.1)),
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
                                        border: Border.all(color: colorScheme.primary.withValues(alpha: 0.5)),
                                      ),
                                      child: Icon(Icons.info_outline, color: colorScheme.primary, size: 16),
                                    ),
                                    const SizedBox(width: 12),
                                    Text(
                                      "Too many incorrect attempts",
                                      style: theme.textTheme.titleMedium?.copyWith(
                                        color: colorScheme.primary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  "If an incorrect PIN is entered 10 times, ZiqeX will automatically reset. All data saved on this device will be permanently deleted",
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
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
                              child: Icon(Icons.shield_outlined, size: 120, color: colorScheme.primary),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 48),
                      // Centered Shield Icon
                      Center(
                        child: Icon(Icons.shield_outlined, color: colorScheme.onSurface.withValues(alpha: 0.1), size: 48),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 3, // "You" tab
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

  Widget _buildSectionTitle(BuildContext context, String title, Color color) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Text(
          title,
          style: theme.textTheme.labelSmall?.copyWith(
            color: color,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: 1,
            color: theme.colorScheme.outline.withValues(alpha: 0.1),
          ),
        ),
      ],
    );
  }

  Widget _buildMethodCard(
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
                color: colorScheme.primary.withValues(alpha: 0.05),
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
