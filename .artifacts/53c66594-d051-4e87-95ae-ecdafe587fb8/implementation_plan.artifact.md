# Implementation Plan - Persistent Security Configuration

I will modify the security logic to ensure that a set PIN or biometric configuration persists even when the master "App Lock" toggle is turned OFF. The toggle will now only control the active enforcement of security, not the presence of the configuration itself.

## User Review Required

> [!NOTE]
> After this change, turning off "App Lock" will no longer delete your PIN. You can turn the lock back ON later and your previous PIN will still be active.

## Proposed Changes

### [Security Services]

#### [MODIFY] [security_service.dart](file:///D:/develop/Projects/mobile-app/lib/security/services/security_service.dart)
- Update `disableAppLock()`: Remove the line that resets the security type to `SecurityType.none`. It will now only set the `app_lock_enabled` flag to `false`.
- Add `setAppLockEnabled(bool enabled)`: A clean method to only toggle the enforcement flag without touching the authentication method.

### [Security Logic]

#### [MODIFY] [security_provider.dart](file:///D:/develop/Projects/mobile-app/lib/security/providers/security_provider.dart)
- Update `toggleAppLock(bool value)`:
    - Call the new `_securityService.setAppLockEnabled(value)`.
    - Maintain the `_selectedType` regardless of the toggle state.
- This ensures the UI (e.g., "Brahm-edge PIN") continues to show "PIN is active" even if the global lock is disabled.

## Verification Plan

### Manual Verification
- **Persistence Test**:
    1. Set a PIN in the Security settings.
    2. Toggle "App lock" to OFF.
    3. Verify that the "Brahm-edge PIN" card still says "PIN is active".
    4. Toggle "App lock" back to ON.
    5. Restart the app and verify it asks for the PIN.
- **Reminder Test**:
    1. Clear the PIN (by deleting all data or fresh install).
    2. Toggle "App lock" to ON.
    3. Exit the screen.
    4. Verify the "Security Setup Incomplete" reminder still appears.
- **Theme Check**: Ensure all states remain visually consistent in Light and Dark modes.
