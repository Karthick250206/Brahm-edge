import '../storage/secure_storage_service.dart';

/// Manages failed attempts and temporary lockouts.
class LockManager {
  final SecureStorageService _storage;
  static const int maxAttempts = 5;
  static const int lockoutDurationSeconds = 30;

  LockManager(this._storage);

  Future<bool> isLockedOut() async {
    final DateTime? lockoutTime = await _storage.getLastLockoutTime();
    if (lockoutTime == null) return false;

    final Duration diff = DateTime.now().difference(lockoutTime);
    if (diff.inSeconds < lockoutDurationSeconds) {
      return true;
    } else {
      // Lockout period expired
      await resetAttempts();
      return false;
    }
  }

  Future<int> recordFailedAttempt() async {
    int attempts = await _storage.getFailedAttempts();
    attempts++;
    await _storage.setFailedAttempts(attempts);

    if (attempts >= maxAttempts) {
      await _storage.setLastLockoutTime(DateTime.now());
    }
    return attempts;
  }

  Future<void> resetAttempts() async {
    await _storage.setFailedAttempts(0);
    await _storage.setLastLockoutTime(null);
  }

  Future<int> getRemainingSeconds() async {
    final DateTime? lockoutTime = await _storage.getLastLockoutTime();
    if (lockoutTime == null) return 0;

    final int elapsed = DateTime.now().difference(lockoutTime).inSeconds;
    final int remaining = lockoutDurationSeconds - elapsed;
    return remaining > 0 ? remaining : 0;
  }
}
