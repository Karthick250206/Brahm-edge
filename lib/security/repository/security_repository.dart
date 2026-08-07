import '../models/security_type.dart';

abstract class SecurityRepository {
  Future<bool> isAppLockEnabled();
  Future<void> setAppLockEnabled(bool enabled);
  Future<SecurityType> getSecurityType();
  Future<void> setSecurityType(SecurityType type);
  Future<int> getTimeout();
  Future<void> setTimeout(int minutes);
  Future<void> clearAll();
  Future<void> setOnboarded(bool onboarded);
  Future<bool> isOnboarded();
  Future<void> setFirstLaunch(bool isFirst);
  Future<bool> isFirstLaunch();
}
