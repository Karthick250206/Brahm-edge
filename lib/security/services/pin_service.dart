import '../crypto/crypto_service.dart';
import '../storage/secure_storage_service.dart';
import '../models/authentication_result.dart';
import '../models/security_type.dart';

/// Handles application-specific PIN logic.
class PinService {
  final SecureStorageService _storage;
  final CryptoService _crypto;

  PinService(this._storage, this._crypto);

  Future<void> createPin(String pin) async {
    final String salt = _crypto.generateSalt();
    final String hash = _crypto.hashValue(pin, salt);
    await _storage.savePinData(hash, salt);
  }

  Future<AuthenticationResult> verifyPin(String pin) async {
    final String? storedHash = await _storage.getPinHash();
    final String? salt = await _storage.getPinSalt();

    if (storedHash == null || salt == null) {
      return AuthenticationResult.failure('No PIN configured');
    }

    final bool matches = _crypto.verify(pin, storedHash, salt);
    if (matches) {
      return AuthenticationResult.success(SecurityType.pin);
    } else {
      return AuthenticationResult.failure('Incorrect PIN');
    }
  }
}
