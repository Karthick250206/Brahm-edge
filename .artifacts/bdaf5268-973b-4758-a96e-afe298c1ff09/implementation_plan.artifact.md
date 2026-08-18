# Implementation Plan: Reorder Onboarding Flow (Language First)

Move the `NewLanguageSelectionScreen` to be the first screen shown during onboarding.

## Proposed Changes

### [MODIFY] [main.dart](file:///D:/develop/Projects/Brahm-edge/lib/main.dart)
- Import `new_language_selection_screen.dart`.
- In `AuthenticationWrapper`, change the initial screen for `isFirstLaunch` from `WelcomeScreen` to `NewLanguageSelectionScreen`.

### [MODIFY] [NewLanguageSelectionScreen](file:///D:/develop/Projects/Brahm-edge/lib/screens/new_language_selection_screen.dart)
- Import `welcome_screen.dart`.
- Remove import of `intelligence_info_screen.dart`.
- Change navigation logic in the "Continue" button to go to `WelcomeScreen` instead of `IntelligenceInfoScreen`.
- Adjust "Back" button behavior: since it's now the first screen, "Back" could either be removed or handled as an app exit.

### [MODIFY] [WelcomeScreen](file:///D:/develop/Projects/Brahm-edge/lib/screens/welcome_screen.dart)
- Remove import of `new_language_selection_screen.dart`.
- Ensure `intelligence_info_screen.dart` is imported.
- Change navigation logic in the "BEGIN ONBOARDING" button to go to `IntelligenceInfoScreen` instead of `NewLanguageSelectionScreen`.
- (Optional) Add a "Back" button to return to the language selection.

## Verification Plan

### Manual Verification
- Launch the app for the first time.
- Verify that **Language Selection** is the first screen shown.
- Verify that clicking "Continue" on the Language screen leads to the **Welcome Screen**.
- Verify that clicking "BEGIN ONBOARDING" on the Welcome screen leads to **Intelligence Info**.
- Verify the rest of the flow remains intact.
