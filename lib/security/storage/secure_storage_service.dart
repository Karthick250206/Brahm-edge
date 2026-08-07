import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../models/security_type.dart';

/// Provides a high-level wrapper for flutter_secure_storage to manage security settings.
class SecureStorageService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  static const String _keySecurityType = 'security_type';
  static const String _keyPinHash = 'pin_hash';
  static const String _keyPinSalt = 'pin_salt';
  static const String _keyPasswordHash = 'password_hash';
  static const String _keyPasswordSalt = 'password_salt';
  static const String _keyTimeout = 'timeout_minutes';
  static const String _keyLastUnlockTime = 'last_unlock_time';
  static const String _keyFailedAttempts = 'failed_attempts';
  static const String _keyAppLockEnabled = 'app_lock_enabled';
  static const String _keyLastLockoutTime = 'last_lockout_time';
  static const String _keyOnboarded = 'app_onboarded';
  static const String _keyFirstLaunch = 'is_first_launch';

  Future<void> setAppLockEnabled(bool enabled) async {
    await _storage.write(key: _keyAppLockEnabled, value: enabled.toString());
  }

  Future<bool> isAppLockEnabled() async {
    final String? value = await _storage.read(key: _keyAppLockEnabled);
    return value == 'true';
  }

  Future<void> setSecurityType(SecurityType type) async {
    await _storage.write(key: _keySecurityType, value: type.name);
  }

  Future<SecurityType> getSecurityType() async {
    final String? value = await _storage.read(key: _keySecurityType);
    return SecurityType.values.firstWhere(
      (e) => e.name == value,
      orElse: () => SecurityType.none,
    );
  }

  Future<void> savePinData(String hash, String salt) async {
    await _storage.write(key: _keyPinHash, value: hash);
    await _storage.write(key: _keyPinSalt, value: salt);
  }

  Future<String?> getPinHash() async => await _storage.read(key: _keyPinHash);
  Future<String?> getPinSalt() async => await _storage.read(key: _keyPinSalt);

  Future<void> savePasswordData(String hash, String salt) async {
    await _storage.write(key: _keyPasswordHash, value: hash);
    await _storage.write(key: _keyPasswordSalt, value: salt);
  }

  Future<String?> getPasswordHash() async => await _storage.read(key: _keyPasswordHash);
  Future<String?> getPasswordSalt() async => await _storage.read(key: _keyPasswordSalt);

  Future<void> setTimeout(int minutes) async {
    await _storage.write(key: _keyTimeout, value: minutes.toString());
  }

  Future<int> getTimeout() async {
    final String? value = await _storage.read(key: _keyTimeout);
    return int.tryParse(value ?? '0') ?? 0;
  }

  Future<void> updateLastUnlockTime() async {
    await _storage.write(
      key: _keyLastUnlockTime,
      value: DateTime.now().millisecondsSinceEpoch.toString(),
    );
  }

  Future<DateTime?> getLastUnlockTime() async {
    final String? value = await _storage.read(key: _keyLastUnlockTime);
    if (value == null) return null;
    return DateTime.fromMillisecondsSinceEpoch(int.parse(value));
  }

  Future<void> setFailedAttempts(int attempts) async {
    await _storage.write(key: _keyFailedAttempts, value: attempts.toString());
  }

  Future<int> getFailedAttempts() async {
    final String? value = await _storage.read(key: _keyFailedAttempts);
    return int.tryParse(value ?? '0') ?? 0;
  }

  Future<void> setLastLockoutTime(DateTime? time) async {
    if (time == null) {
      await _storage.delete(key: _keyLastLockoutTime);
    } else {
      await _storage.write(
        key: _keyLastLockoutTime,
        value: time.millisecondsSinceEpoch.toString(),
      );
    }
  }

  Future<DateTime?> getLastLockoutTime() async {
    final String? value = await _storage.read(key: _keyLastLockoutTime);
    if (value == null) return null;
    return DateTime.fromMillisecondsSinceEpoch(int.parse(value));
  }

  Future<void> clearAll() async {
    await _storage.deleteAll();
  }

  Future<void> setOnboarded(bool onboarded) async {
    await _storage.write(key: _keyOnboarded, value: onboarded.toString());
  }

  Future<bool> isOnboarded() async {
    final String? value = await _storage.read(key: _keyOnboarded);
    return value == 'true';
  }

  Future<void> setFirstLaunch(bool isFirst) async {
    await _storage.write(key: _keyFirstLaunch, value: isFirst.toString());
  }

  Future<bool> isFirstLaunch() async {
    final String? value = await _storage.read(key: _keyFirstLaunch);
    // Defaults to true if no value exists (first time)
    return value == null || value == 'true';
  }
}
