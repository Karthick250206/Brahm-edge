import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../security/providers/security_provider.dart';
import '../security/models/security_type.dart';

enum PinMode { setup, confirm, verify }

class PinSetupScreen extends StatefulWidget {
  final PinMode mode;
  final String? prevPin; // For confirmation
  final Function(String)? onSuccess;

  const PinSetupScreen({
    super.key, 
    this.mode = PinMode.setup, 
    this.prevPin,
    this.onSuccess,
  });

  @override
  State<PinSetupScreen> createState() => _PinSetupScreenState();
}

class _PinSetupScreenState extends State<PinSetupScreen> {
  String _enteredPin = "";
  String _errorMessage = "";

  void _onKeyPress(String value) {
    if (_enteredPin.length < 4) {
      setState(() {
        _enteredPin += value;
        _errorMessage = "";
      });
    }
  }

  void _onDelete() {
    if (_enteredPin.isNotEmpty) {
      setState(() {
        _enteredPin = _enteredPin.substring(0, _enteredPin.length - 1);
        _errorMessage = "";
      });
    }
  }

  void _onSubmit() async {
    final securityProvider = context.read<SecurityProvider>();
    
    if (_enteredPin.length == 4) {
      if (widget.mode == PinMode.setup) {
        // Navigate to confirmation
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PinSetupScreen(
              mode: PinMode.confirm,
              prevPin: _enteredPin,
              onSuccess: widget.onSuccess,
            ),
          ),
        ).then((result) {
          if (result == true) Navigator.pop(context, true);
        });
      } else if (widget.mode == PinMode.confirm) {
        if (_enteredPin == widget.prevPin) {
          await securityProvider.setSecurityType(SecurityType.pin, value: _enteredPin);
          if (mounted) {
            if (widget.onSuccess != null) {
              widget.onSuccess!(_enteredPin);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("PIN set successfully")),
              );
            }
            Navigator.pop(context, true);
          }
        } else {
          setState(() {
            _enteredPin = "";
            _errorMessage = "PINs do not match. Try again.";
          });
        }
      } else if (widget.mode == PinMode.verify) {
        final result = await securityProvider.verifyPin(_enteredPin);
        if (result.success) {
          if (mounted) {
            if (widget.onSuccess != null) {
              widget.onSuccess!(_enteredPin);
            }
            Navigator.pop(context, true);
          }
        } else {
          setState(() {
            _enteredPin = "";
            _errorMessage = result.errorMessage ?? "Incorrect PIN. Please try again.";
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    String title;
    String subtitle;

    switch (widget.mode) {
      case PinMode.setup:
        title = "Set 4-Digit PIN";
        subtitle = "Create a secure code to access the app";
        break;
      case PinMode.confirm:
        title = "Confirm PIN";
        subtitle = "Re-enter your 4-digit code to verify";
        break;
      case PinMode.verify:
        title = "Enter Current PIN";
        subtitle = "Enter your existing code to continue";
        break;
    }

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Column(
                  children: [
                    // Header Row
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back, color: colorScheme.onSurface),
                          onPressed: () => Navigator.pop(context),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "Security",
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    // Title
                    Text(
                      title,
                      style: theme.textTheme.headlineMedium?.copyWith(
                        color: colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Subtitle
                    Text(
                      subtitle,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                    if (_errorMessage.isNotEmpty) ...[
                      const SizedBox(height: 16),
                      Text(
                        _errorMessage,
                        style: TextStyle(color: colorScheme.error, fontWeight: FontWeight.bold),
                      ),
                    ],
                    const SizedBox(height: 40),
                    // PIN Dots
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(4, (index) {
                        bool filled = index < _enteredPin.length;
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: filled ? colorScheme.primary : Colors.transparent,
                            border: Border.all(
                              color: filled ? colorScheme.primary : colorScheme.onSurface.withValues(alpha: 0.2),
                              width: 2,
                            ),
                          ),
                        );
                      }),
                    ),
                    const Spacer(),
                    // Numeric Pad
                    _buildNumericPad(context),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
            _buildBottomNav(context),
          ],
        ),
      ),
    );
  }

  Widget _buildNumericPad(BuildContext context) {
    return Column(
      children: [
        _buildRow(context, ["1", "2", "3"]),
        const SizedBox(height: 12),
        _buildRow(context, ["4", "5", "6"]),
        const SizedBox(height: 12),
        _buildRow(context, ["7", "8", "9"]),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(child: _buildKey(context, "delete", isAction: true)),
            const SizedBox(width: 12),
            Expanded(child: _buildKey(context, "0")),
            const SizedBox(width: 12),
            Expanded(child: _buildKey(context, "submit", isAction: true)),
          ],
        ),
      ],
    );
  }

  Widget _buildRow(BuildContext context, List<String> keys) {
    return Row(
      children: keys.map((key) => Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: _buildKey(context, key),
        ),
      )).toList(),
    );
  }

  Widget _buildKey(BuildContext context, String key, {bool isAction = false}) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    final keyColor = colorScheme.surfaceContainerLow;
    final actionColor = colorScheme.primary;

    Widget content;
    if (key == "delete") {
      content = Icon(Icons.backspace_outlined, color: isAction ? colorScheme.onPrimary : colorScheme.onSurface);
    } else if (key == "submit") {
      content = Icon(Icons.check, color: isAction ? colorScheme.onPrimary : colorScheme.onSurface);
    } else {
      content = Text(
        key,
        style: theme.textTheme.headlineMedium?.copyWith(
          color: colorScheme.onSurface,
          fontWeight: FontWeight.bold,
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        if (key == "delete") {
          _onDelete();
        } else if (key == "submit") {
          _onSubmit();
        } else {
          _onKeyPress(key);
        }
      },
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: isAction ? actionColor : keyColor,
          borderRadius: BorderRadius.circular(12),
          border: isAction ? null : Border.all(color: colorScheme.outline.withValues(alpha: 0.05)),
        ),
        child: Center(child: content),
      ),
    );
  }

  Widget _buildBottomNav(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: colorScheme.outline.withValues(alpha: 0.1), width: 0.5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home_outlined, "Home", false, colorScheme.onSurfaceVariant),
          _buildNavItem(Icons.chat_bubble_outline, "Chat", false, colorScheme.onSurfaceVariant),
          _buildNavItem(Icons.library_books_outlined, "Library", false, colorScheme.onSurfaceVariant),
          _buildNavItem(Icons.person, "You", true, colorScheme.primary),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool active, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(color: color, fontSize: 10, fontWeight: active ? FontWeight.bold : FontWeight.normal)),
      ],
    );
  }
}
