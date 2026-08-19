# Implementation Plan: Localization for Model Download Screen

This plan covers the localization of all hardcoded strings in the `ModelDownloadScreen` across all 13 supported languages.

## User Review Required

> [!IMPORTANT]
> Some technical terms (like "params", "tok/s", "TTFT") will be kept in their technical format or transliterated to ensure clarity for users familiar with AI terminology.

## Proposed Changes

### 1. Translation Assets
- **`lib/i18n/strings.i18n.json`**: Add a new `modelDownload` section containing all English strings.
- **Other 12 JSON files**: Add the corresponding translated sections.

### 2. Screen Refactoring
- **`lib/screens/model_download_screen.dart`**: Replace hardcoded strings with `t.modelDownload.<key>`.

### 3. Code Generation
- Run `dart run slang` to regenerate `strings.g.dart`.

## Verification Plan

### Manual Verification
- Switch between English, Hindi, Tamil, and Telugu on the `ModelDownloadScreen`.
- Verify that the layout remains stable even with longer translated strings.
- Confirm the download progress and status messages (e.g., "Validating...") update correctly in the selected language.
