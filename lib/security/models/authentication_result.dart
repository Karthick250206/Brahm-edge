import 'security_type.dart';

/// Represents the result of an authentication attempt.
class AuthenticationResult {
  final bool success;
  final String? errorMessage;
  final SecurityType? type;

  AuthenticationResult({
    required this.success,
    this.errorMessage,
    this.type,
  });

  factory AuthenticationResult.success([SecurityType? type]) {
    return AuthenticationResult(success: true, type: type);
  }

  factory AuthenticationResult.failure(String message) {
    return AuthenticationResult(success: false, errorMessage: message);
  }
}
