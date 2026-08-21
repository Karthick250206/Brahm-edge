import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';
import '../models/authentication_result.dart';
import '../models/security_type.dart';

/// Handles biometric and device credential authentication.
class BiometricService {
  final LocalAuthentication _auth = LocalAuthentication();

  Future<bool> canAuthenticate() async {
    final bool canCheckBiometrics = await _auth.canCheckBiometrics;
    final bool isDeviceSupported = await _auth.isDeviceSupported();
    return canCheckBiometrics || isDeviceSupported;
  }

  Future<List<BiometricType>> getAvailableBiometrics() async {
    final List<BiometricType> availableBiometrics = await _auth.getAvailableBiometrics();
    // Debug print to help identify what the OS allows the app to see
    debugPrint('Security Diagnostic - Available Biometrics: $availableBiometrics');
    return availableBiometrics;
  }

  Future<AuthenticationResult> authenticate({
    required String reason,
    SecurityType? type,
    bool biometricOnly = false,
  }) async {
    try {
      final bool isFace = type == SecurityType.face;

      final bool success = await _auth.authenticate(
        localizedReason: reason,
        authMessages: <AuthMessages>[
          AndroidAuthMessages(
            signInTitle: isFace ? 'Face Authentication' : 'Biometric Authentication',
            signInHint: isFace ? 'Looking for face...' : 'Verify your identity',
            cancelButton: 'Cancel',
          ),
        ],
        biometricOnly: biometricOnly,
        // CRITICAL: sensitiveTransaction MUST be false for most Face Unlock (Class 2)
        // implementations to be allowed by Android in apps.
        sensitiveTransaction: false,
        persistAcrossBackgrounding: true,
      );

      if (success) {
        return AuthenticationResult.success(type);
      } else {
        return AuthenticationResult.failure('Authentication failed');
      }
    } on PlatformException catch (e) {
      // Trace logic for exact return for mobile authentication
      debugPrint('Security Trace - Error Code: ${e.code}, Message: ${e.message}');
      return AuthenticationResult.failure('Error [${e.code}]: ${e.message}');
    } catch (e) {
      return AuthenticationResult.failure('Unexpected error: $e');
    }
  }
}
