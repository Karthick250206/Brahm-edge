import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../security/providers/security_provider.dart';
import '../security/models/security_type.dart';
import 'pin_auth_screen.dart';
import 'password_auth_screen.dart';

class AuthGate extends StatefulWidget {
  final Widget child;
  final bool forceLock;

  const AuthGate({super.key, required this.child, this.forceLock = false});

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  bool _authenticated = false;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Use addPostFrameCallback to access provider after first build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkAuth();
    });
  }

  Future<void> _checkAuth() async {
    if (!mounted) return;

    final provider = context.read<SecurityProvider>();

    // WAIT for the provider to be initialized if it isn't yet
    if (!provider.isInitialized) {
      // We can use a small delay or listen to the provider,
      // but since we already show a loader in build() when !isInitialized,
      // we can just wait for the next frame and try again if needed,
      // or more robustly, wait for the initialization.
      while (!provider.isInitialized) {
        await Future.delayed(const Duration(milliseconds: 50));
        if (!mounted) return;
      }
    }

    bool lockEnabled = provider.isAppLockEnabled;

    if (!lockEnabled && !widget.forceLock) {
      setState(() {
        _authenticated = true;
        _isLoading = false;
      });
      return;
    }

    final method = provider.selectedType;

    if (method == SecurityType.biometric ||
        method == SecurityType.face ||
        method == SecurityType.fingerprint ||
        method == SecurityType.deviceCredential) {
      final result = await provider.authenticate();
      if (result.success) {
        setState(() {
          _authenticated = true;
          _isLoading = false;
        });
      } else {
        setState(() => _isLoading = false);
      }
    } else {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<SecurityProvider>();

    if (!provider.isInitialized || _isLoading) {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(child: CircularProgressIndicator(color: Colors.orange)),
      );
    }

    if (_authenticated) {
      return widget.child;
    }

    final method = provider.selectedType;

    switch (method) {
      case SecurityType.pin:
        return PinAuthScreen(
          onUnlocked: () => setState(() => _authenticated = true),
        );
      case SecurityType.password:
        return PasswordAuthScreen(
          onUnlocked: () => setState(() => _authenticated = true),
        );
      case SecurityType.face:
      case SecurityType.fingerprint:
      case SecurityType.biometric:
      case SecurityType.deviceCredential:
        return _buildRetryBiometric(method);
      default:
        return widget.child;
    }
  }

  Widget _buildRetryBiometric(SecurityType method) {
    final bool isFace = method == SecurityType.face;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(isFace ? Icons.face : Icons.fingerprint, size: 80, color: Colors.orange),
            const SizedBox(height: 24),
            const Text(
              "Authentication Required",
              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: _checkAuth,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text("Authenticate", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
