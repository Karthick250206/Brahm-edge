# Implementation Plan - Backend Security Integration

I will integrate the new comprehensive security backend located in `lib/security/` with your existing UI. This will replace the temporary local storage logic with a robust, repository-based system that includes crypto services, session management, and lockout protection.

## User Review Required

> [!IMPORTANT]
> This integration will use the `provider` package for state management. I will add it to your `pubspec.yaml` and wrap your app in a `MultiProvider`.

> [!WARNING]
> Existing PINs or biometric preferences set with the old `SecurityService` will be reset, as the new backend uses a different storage and encryption format. Users will need to set up their PIN again.

## Proposed Changes

### Configuration & Dependencies

#### [MODIFY] [pubspec.yaml](file:///D:/develop/Projects/mobile-app/pubspec.yaml)
- Add `provider: ^6.1.1` to dependencies.

### Application Entry Point

#### [MODIFY] [main.dart](file:///D:/develop/Projects/mobile-app/lib/main.dart)
- Import `securityProviders` and `provider`.
- Wrap `MaterialApp` in a `MultiProvider`.
- Refactor `MyApp` and `LockedScreen` to use `SecurityProvider` via `context.watch()` or `context.read()`.
- Remove manual instantiation of the old `SecurityService`.

### UI Integration

#### [MODIFY] [security_screen.dart](file:///D:/develop/Projects/mobile-app/lib/screens/security_screen.dart)
- Use `SecurityProvider` for toggling the global app lock and checking current enrollment status.
- Delegate setup actions (PIN/Biometric) to the new provider methods.

#### [MODIFY] [pin_setup_screen.dart](file:///D:/develop/Projects/mobile-app/lib/screens/pin_setup_screen.dart)
- Update the `_onSubmit` logic to use `securityProvider.setSecurityType(SecurityType.pin, value: pin)`.
- Support the `verify` mode using `securityProvider.verifyPin(pin)`.

#### [MODIFY] [biometric_setup_screen.dart](file:///D:/develop/Projects/mobile-app/lib/screens/biometric_setup_screen.dart)
- Update the "Authenticate" button to use `securityProvider.authenticate(type: SecurityType.biometric)`.
- On success, call `securityProvider.setSecurityType(SecurityType.biometric)`.

### Cleanup

#### [DELETE] [security_service.dart](file:///D:/develop/Projects/mobile-app/lib/services/security_service.dart)
- Remove the legacy service once all references are migrated.

## Verification Plan

### Automated Verification
- Run `flutter pub get` to ensure the new dependency is resolved.
- Check for any compilation errors in the refactored screens.

### Manual Verification
1. **PIN Setup**: Verify that you can set a new 4-digit PIN and that it persists.
2. **App Locking**: Close and reopen the app; verify the PIN pad appears and correctly validates the code.
3. **Lockout Logic**: Enter the wrong PIN 5 times and verify that the app locks you out for 30 seconds (as defined in `LockManager`).
4. **Biometric Toggle**: Enable biometrics and verify that the system prompt appears on resume.
5. **Universal Toggle**: Verify that turning OFF the "App lock" master switch disables all security regardless of configured PIN/Biometrics.
