# Implementation Plan - Bypassing Legacy Intro Screens

I will update the onboarding flow to bypass the dark-themed intro screens while preserving their codebases for future use. The flow will now transition directly from the new grid selection screens to the final onboarding steps.

## User Review Required

> [!NOTE]
> The screens being removed from the active flow are `IntroScreen` and `PrivacyInfoScreen` (and their subsequent dark-themed informational pages). The files will remain in the project directory but will no longer be visible to the user during the regular app experience.

## Proposed Changes

### Application Flow & Routing

#### [MODIFY] [main.dart](file:///D:/develop/Projects/mobile-app/lib/main.dart)
- Update `AuthenticationWrapper` to use `WelcomeScreen` as the primary entry point for non-onboarded users, replacing the reference to `IntroScreen`.
- This ensures that if a user closes the app mid-onboarding, they return to the start of the new sequence.

#### [MODIFY] [new_language_selection_screen.dart](file:///D:/develop/Projects/mobile-app/lib/screens/new_language_selection_screen.dart)
- Update the "Continue" button navigation.
- **Old**: Navigated to `PromiseScreen`.
- **New**: Will navigate directly to `ModelDownloadScreen`.

### Code Preservation
- No files will be deleted. `intro_screen.dart`, `privacy_info_screen.dart`, `circles_privacy_screen.dart`, `offline_info_screen.dart`, and `promise_screen.dart` will be kept in `lib/screens/` for potential future repurposing.

## Verification Plan

### Manual Verification
- **Onboarding Journey**: Start a fresh install and verify the new sequence:
    1. `WelcomeScreen` (Begin Onboarding)
    2. `PillarsGridSelectionScreen` (Continue)
    3. `NewLanguageSelectionScreen` (Continue)
    4. `PromiseScreen` (Finalizing setup)
- **Persistence Check**: Close and reopen the app at each step to ensure it doesn't revert to the old dark intro screens.
- **Reference Preservation**: Verify that the files `intro_screen.dart` and `privacy_info_screen.dart` still exist and contain their original code.
