import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';

/// Handles hashing and salt generation for PINs and passwords.
class CryptoService {
  /// Generates a random salt of specified length.
  String generateSalt([int length = 32]) {
    final Random random = Random.secure();
    final Uint8List saltBytes = Uint8List(length);
    for (int i = 0; i < length; i++) {
      saltBytes[i] = random.nextInt(256);
    }
    return base64.encode(saltBytes);
  }

  /// Hashes a value with a salt using SHA-256.
  String hashValue(String value, String salt) {
    final List<int> bytes = utf8.encode(value + salt);
    final Digest digest = sha256.convert(bytes);
    return digest.toString();
  }

  /// Verifies if a value matches a stored hash given the salt.
  bool verify(String value, String hash, String salt) {
    final String newHash = hashValue(value, salt);
    return newHash == hash;
  }
}
