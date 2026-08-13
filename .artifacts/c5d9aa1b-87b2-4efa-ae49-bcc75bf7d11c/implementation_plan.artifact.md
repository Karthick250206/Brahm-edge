# Implementation Plan - Automated Model Loading in Chat Screen

Automate the model loading process when a user enters the Chat Screen, ensuring the AI is ready to use immediately without manual intervention.

## User Review Required

> [!IMPORTANT]
> The app will now automatically attempt to load the default model (`gemma-4-E2B-it.litertlm`) upon entering the Chat Screen if it is not already loaded. A non-dismissible loading overlay will be shown to inform the user that the "Model is initialising...".

## Proposed Changes

### [Screens]

#### [MODIFY] [chat_screen.dart](file:///D:/Brahm-edge/lib/screens/chat_screen.dart)
- **Auto-Load Logic**:
    - Add `_checkAndAutoLoadModel()` to `_ChatScreenState`. This method will check if the model is already loaded and, if not, trigger the `loadModel` call.
    - Call `_checkAndAutoLoadModel()` in `initState`.
- **Loading UI**:
    - Implement a loading overlay in the `build` method that appears when `_inferenceService.isModelLoading` is true.
    - The overlay will use a `BackdropFilter` with blur and a centered card displaying:
        - A `CircularProgressIndicator`.
        - The message "Model is initialising...".
        - If `_inferenceService.isOptimizing` is true, it will update to "Optimizing engine...".
    - This overlay will prevent user interaction with the chat until the model is ready.

## Verification Plan

### Manual Verification
1.  **Fresh Start**: Close the app, ensure the model is downloaded but NOT loaded.
2.  **Enter Chat**: Open the app and go to the Chat Screen.
3.  **Expectation**:
    - A popup saying "Model is initialising..." should appear immediately.
    - If the device triggers GPU-to-CPU fallback, the message should change to "Optimizing engine...".
    - Once finished, the popup should disappear, and the chat should be functional.
4.  **Already Loaded**: Go to another screen and come back. Verify the popup does NOT appear if the model is already loaded.
5.  **Model Missing**: If the model is not downloaded, verify the app handles it gracefully (likely by showing the existing "Model not loaded" snackbar when trying to send a message, as per current logic, or I can add a check in the auto-load).
