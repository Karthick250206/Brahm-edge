# Walkthrough - Enhanced Onboarding Flow (Language First)

I have updated the onboarding sequence to prioritize language selection, making it the very first interaction for new users.

## Key Changes

### 1. New Entry Point
In [main.dart](file:///D:/develop/Projects/Brahm-edge/lib/main.dart), I updated the `AuthenticationWrapper` to return the `NewLanguageSelectionScreen` as the home screen for first-time users.

### 2. Language Selection Refinement
- **Navigation:** Updated the "Continue" button in [new_language_selection_screen.dart](file:///D:/develop/Projects/Brahm-edge/lib/screens/new_language_selection_screen.dart) to navigate to the `WelcomeScreen`.
- **UI Clean-up:** Hidden the "Back" button in the bottom row and the AppBar's leading icon, as this is now the starting point of the application.

### 3. Welcome Screen Enhancements
- **Navigation:** Updated the onboarding trigger to lead to the `IntelligenceInfoScreen`.
- **UX Improvements:** Added a back button in the top header to allow users to return and change their language selection if needed.

## New Onboarding Flow
1.  **Language Selection** (Start)
2.  **Welcome Screen** (Introduction)
3.  **Intelligence Info** (Capabilities)
4.  **Pillars Selection** (Personalization)
5.  **Model Download** (Final Setup)

## Verification
- Confirmed that the initial app state correctly triggers the Language Selection screen.
- Verified bi-directional navigation between Language and Welcome screens.
