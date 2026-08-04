import '../storage/secure_storage_service.dart';

/// Manages app session and inactivity timeout.
class SessionService {
  final SecureStorageService _storage;

  SessionService(this._storage);

  Future<void> updateActivity() async {
    await _storage.updateLastUnlockTime();
  }

  Future<bool> shouldLock() async {
    final bool enabled = await _storage.isAppLockEnabled();
    if (!enabled) return false;

    final int timeoutMins = await _storage.getTimeout();

    final DateTime? lastUnlock = await _storage.getLastUnlockTime();
    if (lastUnlock == null) return true;

    final Duration diff = DateTime.now().difference(lastUnlock);

    if (timeoutMins == 0) {
      // Allow a 5-second grace period for the "Immediately" setting.
      // This prevents the app from re-locking while the biometric dialog is still closing
      // or when the app is briefly backgrounded for system authentication.
      return diff.inSeconds > 5;
    }

    return diff.inMinutes >= timeoutMins;
  }
}
