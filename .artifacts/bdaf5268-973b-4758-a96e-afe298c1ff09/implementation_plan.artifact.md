# Implementation Plan: Model Management Screen

Replace the `LibraryScreenLegacy` with a new, high-fidelity `ModelManagementScreen` as per the provided image.

## User Review Required

> [!IMPORTANT]
> The new screen will handle model loading, unloading, and downloading. Deletion logic will be implemented as a file-system removal operation.

## Proposed Changes

### 1. Update Translations
- **`lib/i18n/strings.i18n.json`**: Add a new `model_mgmt` section:
    - `appBar`: "Model Management"
    - `subtitle`: "Configure local edge AI language models"
    - `status_loaded`: "LOADED"
    - `status_unloaded`: "UNLOADED"
    - `status_loading`: "LOADING..."
    - `size`: "Size: {size}"
    - `load`: "Load"
    - `unload`: "Unload"
    - `download`: "Download"
    - `delete`: "Delete"
    - `brahm_2b_desc`: "Ultra-fast compact edge model designed for low-latency text completion and chat on mobile devices."
    - `brahm_5b_desc`: "Balanced reasoning model offering enhanced task accuracy and complex instructional performance."

### 2. Create Model Management Screen
- **`lib/screens/model_management_screen.dart`**:
    - Build the UI using `Scaffold` and `ListView`.
    - Implement the `ModelCard` component with:
        - Status indicator dot and text.
        - Dynamic button states (e.g., disable `Load` if model isn't downloaded).
        - Connect `Load` to `inferenceService.loadModel`.
        - Connect `Download` to `downloadService.downloadModel`.
        - Implement `Unload` logic (may need adding to `LlmInferenceService`).
        - Implement `Delete` logic (remove file from `models/` directory).

### 3. Integration
- **`lib/screens/library_screen.dart`**: Update the "Model" card's `onTap` to navigate to `ModelManagementScreen`.
- **`lib/services/llm_inference_service.dart`**: Add an `unloadModel()` method if not present.
- **Cleanup**: Delete `lib/screens/library_screen_legacy.dart`.

## Verification Plan

### Automated Tests
- Run `dart run slang` to generate new keys.
- Run `flutter analyze` to ensure no broken references.

### Manual Verification
- Verify navigation from the Library screen.
- Verify that clicking "Load" actually initializes the model (checked via Chat screen).
- Verify "Download" progress appears on the card.
- Confirm "Delete" removes the model from the storage summary.
