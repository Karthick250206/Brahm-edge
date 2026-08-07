import 'package:local_auth/local_auth.dart';
import '../models/security_type.dart';
import '../models/authentication_result.dart';
import 'biometric_service.dart';
import 'pin_service.dart';
import 'password_service.dart';
import 'session_service.dart';
import 'lock_manager.dart';
import '../repository/security_repository.dart';

/// Main orchestrator for security logic.
class SecurityService {
  final SecurityRepository _repository;
  final BiometricService _biometricService;
  final PinService _pinService;
  final PasswordService _passwordService;
  final SessionService _sessionService;
  final LockManager _lockManager;

  SecurityService(
    this._repository,
    this._biometricService,
    this._pinService,
    this._passwordService,
    this._sessionService,
    this._lockManager,
  );

  Future<bool> isAppLockEnabled() => _repository.isAppLockEnabled();

  Future<SecurityType> getSelectedSecurityType() => _repository.getSecurityType();

  Future<List<BiometricType>> getAvailableBiometrics() => _biometricService.getAvailableBiometrics();

  /// Authenticates the user based on the selected method.
  /// Accepts an optional [overrideType] to verify a specific method during setup.
  Future<AuthenticationResult> authenticate({SecurityType? overrideType}) async {
    if (await _lockManager.isLockedOut()) {
      final int remaining = await _lockManager.getRemainingSeconds();
      return AuthenticationResult.failure('Too many attempts. Locked for $remaining seconds.');
    }

    final SecurityType type = overrideType ?? await _repository.getSecurityType();
    AuthenticationResult result;

    switch (type) {
      case SecurityType.face:
      case SecurityType.fingerprint:
      case SecurityType.biometric:
        // Attempt biometric authentication.
        // If specific biometric (face/fingerprint) is requested, we set biometricOnly: true
        // to encourage the OS to show the biometric prompt specifically.
        result = await _biometricService.authenticate(
          reason: 'Authenticate to access the app',
          type: type,
          biometricOnly: type == SecurityType.face || type == SecurityType.fingerprint,
        );

        // If biometric/device auth fails because it's not set up,
        // we might want to check if an App PIN is available as a manual fallback.
        if (!result.success && result.errorMessage != null) {
          if (result.errorMessage!.contains('NotEnrolled') || result.errorMessage!.contains('NotAvailable')) {
            // Suggest manual fallback to App PIN if configured
            final hasAppPin = await _pinService.verifyPin('').then((r) => r.errorMessage != 'No PIN configured');
            if (hasAppPin) {
              return AuthenticationResult.failure('Biometrics not available. Please use your App PIN.');
            }
          }
        }
        break;
      case SecurityType.deviceCredential:
        result = await _biometricService.authenticate(
          reason: 'Authenticate to access the app',
          type: type,
          biometricOnly: false,
        );
        break;
      case SecurityType.pin:
        // PIN/Password usually requires a UI input which calls verifyPin directly.
        // This is a placeholder for general auth flow.
        return AuthenticationResult.failure('Input required');
      case SecurityType.password:
        return AuthenticationResult.failure('Input required');
      case SecurityType.none:
        return AuthenticationResult.success(SecurityType.none);
    }

    if (result.success) {
      await _lockManager.resetAttempts();
      await _sessionService.updateActivity();
    } else {
      await _lockManager.recordFailedAttempt();
    }

    return result;
  }

  Future<AuthenticationResult> verifyPin(String pin) async {
    if (await _lockManager.isLockedOut()) {
      return AuthenticationResult.failure('Locked out');
    }
    final result = await _pinService.verifyPin(pin);
    if (result.success) {
      await _lockManager.resetAttempts();
      await _sessionService.updateActivity();
    } else {
      await _lockManager.recordFailedAttempt();
    }
    return result;
  }

  Future<AuthenticationResult> verifyPassword(String password) async {
    if (await _lockManager.isLockedOut()) {
      return AuthenticationResult.failure('Locked out');
    }
    final result = await _passwordService.verifyPassword(password);
    if (result.success) {
      await _lockManager.resetAttempts();
      await _sessionService.updateActivity();
    } else {
      await _lockManager.recordFailedAttempt();
    }
    return result;
  }

  Future<void> enableAppLock(SecurityType type, {String? value}) async {
    await _repository.setAppLockEnabled(true);
    await _repository.setSecurityType(type);

    if (type == SecurityType.pin && value != null) {
      await _pinService.createPin(value);
    } else if (type == SecurityType.password && value != null) {
      await _passwordService.createPassword(value);
    }

    await _sessionService.updateActivity();
  }

  Future<void> disableAppLock() async {
    await _repository.setAppLockEnabled(false);
    await _repository.setSecurityType(SecurityType.none);
  }

  Future<bool> shouldLock() => _sessionService.shouldLock();

  Future<void> updateActivity() => _sessionService.updateActivity();

  Future<void> setOnboarded(bool value) => _repository.setOnboarded(value);

  Future<bool> isOnboarded() => _repository.isOnboarded();

  Future<void> setFirstLaunch(bool value) => _repository.setFirstLaunch(value);

  Future<bool> isFirstLaunch() => _repository.isFirstLaunch();
}
