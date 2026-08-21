import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../i18n/strings.g.dart';
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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = Translations.of(context);

    final bool appLockEnabled = securityProvider.isAppLockEnabled && 
                                securityProvider.selectedType == SecurityType.biometric;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
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
                            Icon(Icons.shield_outlined, color: colorScheme.primary, size: 24),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                t.biometric.vault,
                                style: theme.textTheme.titleMedium?.copyWith(
                                  color: colorScheme.primary,
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Container(
                          width: 32,
                          height: 2,
                          decoration: BoxDecoration(
                            color: colorScheme.onSurface.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(1),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          t.biometric.setupTitle,
                          style: theme.textTheme.headlineMedium?.copyWith(
                            color: colorScheme.onSurface,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          t.biometric.setupSub,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 40),
                        _buildOptionCard(
                          context,
                          icon: Icons.fingerprint,
                          title: t.biometric.deviceTitle,
                          subtitle: t.biometric.deviceSub,
                          cardColor: colorScheme.surfaceContainerLow,
                          accentColor: colorScheme.primary,
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
                            activeThumbColor: Colors.white,
                            activeTrackColor: colorScheme.primary,
                            inactiveThumbColor: Colors.grey.shade400,
                            inactiveTrackColor: Colors.grey.shade800,
                          ),
                        ),
                        const SizedBox(height: 16),
                        _buildOptionCard(
                          context,
                          icon: Icons.pin_outlined,
                          title: t.biometric.pinTitle,
                          subtitle: t.biometric.pinSub,
                          cardColor: colorScheme.surfaceContainerLow,
                          accentColor: colorScheme.primary,
                          trailing: Icon(Icons.arrow_forward_ios, color: colorScheme.onSurfaceVariant, size: 16),
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
            color: Colors.black.withValues(alpha: 0.8),
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: colorScheme.surface,
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(color: colorScheme.outline.withValues(alpha: 0.1)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Shield Icon in square container
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: colorScheme.primary.withValues(alpha: 0.05),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: colorScheme.primary.withValues(alpha: 0.2)),
                      ),
                      child: Icon(Icons.shield_outlined, color: colorScheme.primary, size: 48),
                    ),
                    const SizedBox(height: 32),
                    Text(
                      t.biometric.dialogTitle,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        color: colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      t.biometric.dialogSub,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
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
                              side: BorderSide(color: colorScheme.outline.withValues(alpha: 0.2)),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                            ),
                            child: Text(
                              t.biometric.cancel,
                              style: TextStyle(color: colorScheme.onSurface, fontSize: 16, fontWeight: FontWeight.w600),
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
                                if (context.mounted) Navigator.pop(context);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: colorScheme.primary,
                              foregroundColor: colorScheme.onPrimary,
                              padding: const EdgeInsets.symmetric(vertical: 18),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                              elevation: 0,
                            ),
                            child: Text(
                              t.biometric.allow,
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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

  Widget _buildOptionCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Color cardColor,
    required Color accentColor,
    required Widget trailing,
  }) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: theme.colorScheme.outline.withValues(alpha: 0.05)),
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
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
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
