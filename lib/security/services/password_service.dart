import '../crypto/crypto_service.dart';
import '../storage/secure_storage_service.dart';
import '../models/authentication_result.dart';
import '../models/security_type.dart';

/// Handles application-specific password logic.
class PasswordService {
  final SecureStorageService _storage;
  final CryptoService _crypto;

  PasswordService(this._storage, this._crypto);

  Future<void> createPassword(String password) async {
    final String salt = _crypto.generateSalt();
    final String hash = _crypto.hashValue(password, salt);
    await _storage.savePasswordData(hash, salt);
  }

  Future<AuthenticationResult> verifyPassword(String password) async {
    final String? storedHash = await _storage.getPasswordHash();
    final String? salt = await _storage.getPasswordSalt();

    if (storedHash == null || salt == null) {
      return AuthenticationResult.failure('No password configured');
    }

    final bool matches = _crypto.verify(password, storedHash, salt);
    if (matches) {
      return AuthenticationResult.success(SecurityType.password);
    } else {
      return AuthenticationResult.failure('Incorrect password');
    }
  }
}
