import 'security_repository.dart';
import '../storage/secure_storage_service.dart';
import '../models/security_type.dart';

class SecurityRepositoryImpl implements SecurityRepository {
  final SecureStorageService _storage;

  SecurityRepositoryImpl(this._storage);

  @override
  Future<bool> isAppLockEnabled() => _storage.isAppLockEnabled();

  @override
  Future<void> setAppLockEnabled(bool enabled) => _storage.setAppLockEnabled(enabled);

  @override
  Future<SecurityType> getSecurityType() => _storage.getSecurityType();

  @override
  Future<void> setSecurityType(SecurityType type) => _storage.setSecurityType(type);

  @override
  Future<int> getTimeout() => _storage.getTimeout();

  @override
  Future<void> setTimeout(int minutes) => _storage.setTimeout(minutes);

  @override
  Future<void> clearAll() => _storage.clearAll();

  @override
  Future<void> setOnboarded(bool onboarded) => _storage.setOnboarded(onboarded);

  @override
  Future<bool> isOnboarded() => _storage.isOnboarded();
}
