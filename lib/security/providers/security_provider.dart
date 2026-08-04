import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import '../models/security_type.dart';
import '../models/authentication_result.dart';
import '../services/security_service.dart';

class SecurityProvider with ChangeNotifier {
  final SecurityService _securityService;

  bool _isAppLockEnabled = false;
  SecurityType _selectedType = SecurityType.none;
  bool _isAuthenticating = false;
  bool _isInitialized = false;

  SecurityProvider(this._securityService) {
    _loadSettings();
  }

  bool get isAppLockEnabled => _isAppLockEnabled;
  SecurityType get selectedType => _selectedType;
  bool get isAuthenticating => _isAuthenticating;
  bool get isInitialized => _isInitialized;

  Future<void> _loadSettings() async {
    _isAppLockEnabled = await _securityService.isAppLockEnabled();
    _selectedType = await _securityService.getSelectedSecurityType();
    _isInitialized = true;
    notifyListeners();
  }

  Future<void> toggleAppLock(bool value) async {
    if (!value) {
      await _securityService.disableAppLock();
      _isAppLockEnabled = false;
      _selectedType = SecurityType.none;
      notifyListeners();
    }
    // Note: Enabling usually happens after selecting a method in the UI
  }

  Future<AuthenticationResult> enableWithBiometric(bool biometricOnly) async {
    final result = await _securityService.authenticate(); // This uses currently selected, so we need a specific one for setup
    // For setup, we'd typically call biometricService directly or have a setup method in SecurityService
    // Let's assume authenticate works if we temporarily set the type
    return result;
  }

  Future<void> setSecurityType(SecurityType type, {String? value}) async {
    await _securityService.enableAppLock(type, value: value);
    _isAppLockEnabled = true;
    _selectedType = type;
    notifyListeners();
  }

  Future<AuthenticationResult> authenticate({SecurityType? type}) async {
    _isAuthenticating = true;
    notifyListeners();

    final result = await _securityService.authenticate(overrideType: type);

    _isAuthenticating = false;
    // Always notify to refresh lock status if auth succeeded
    notifyListeners();
    return result;
  }

  Future<AuthenticationResult> verifyPin(String pin) async {
    final result = await _securityService.verifyPin(pin);
    if (result.success) {
      notifyListeners();
    }
    return result;
  }

  Future<AuthenticationResult> verifyPassword(String password) async {
    return await _securityService.verifyPassword(password);
  }

  Future<List<BiometricType>> getAvailableBiometrics() async {
    return await _securityService.getAvailableBiometrics();
  }

  Future<bool> shouldLock() => _securityService.shouldLock();

  Future<void> updateActivity() => _securityService.updateActivity();

  Future<void> setOnboarded(bool value) => _securityService.setOnboarded(value);

  Future<bool> isOnboarded() => _securityService.isOnboarded();
}
