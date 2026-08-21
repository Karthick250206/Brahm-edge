import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../security/providers/security_provider.dart';
import '../security/models/security_type.dart';
import 'pin_setup_screen.dart';
import 'biometric_setup_screen.dart';
import 'pin_management_screen.dart';
import '../i18n/strings.g.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  Future<bool> _handleBackPress() async {
    final securityProvider = context.read<SecurityProvider>();
    final theme = Theme.of(context);
    final t = Translations.of(context);
    
    // If App Lock is enabled but no method is set, warn and disable
    if (securityProvider.isAppLockEnabled && securityProvider.selectedType == SecurityType.none) {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: theme.colorScheme.surface,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Text(
            t.security_screen.incomplete_title,
            style: theme.textTheme.titleLarge?.copyWith(
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            t.security_screen.incomplete_content,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                t.security_screen.got_it,
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
    final t = Translations.of(context);

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
                      t.security_screen.appBar,
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
                      _buildSectionTitle(context, t.security_screen.global_protection, colorScheme.primary),
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
                                    t.security_screen.app_lock,
                                    style: theme.textTheme.titleMedium?.copyWith(
                                      color: colorScheme.onSurface,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    t.security_screen.app_lock_sub,
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
                      _buildSectionTitle(context, t.security_screen.auth_methods, colorScheme.primary),
                      const SizedBox(height: 16),

                      // Device Biometrics Card
                      _buildMethodCard(
                        context,
                        icon: Icons.lock_outline,
                        title: t.security_screen.biometrics_title,
                        subtitle: t.security_screen.biometrics_sub,
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
                        title: t.security_screen.pin_title,
                        subtitle: hasPin ? t.security_screen.pin_active : t.security_screen.pin_setup,
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
                                      t.security_screen.warning_title,
                                      style: theme.textTheme.titleMedium?.copyWith(
                                        color: colorScheme.primary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  t.security_screen.warning_sub,
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
          items: [
            BottomNavigationBarItem(icon: const Icon(Icons.home_outlined), label: t.home),
            BottomNavigationBarItem(icon: const Icon(Icons.chat_bubble_outline), label: t.chat),
            BottomNavigationBarItem(icon: const Icon(Icons.library_books_outlined), label: t.library),
            BottomNavigationBarItem(icon: const Icon(Icons.person), label: t.you),
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
