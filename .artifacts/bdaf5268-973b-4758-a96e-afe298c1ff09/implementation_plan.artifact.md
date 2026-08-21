# Implementation Plan: Fix Library Screen Overflow

Address the "Bottom Overflow" issue in the Library screen for Tamil, Malayalam, and other languages with taller/longer scripts.

## Proposed Changes

### 1. Translation Optimization
- **`lib/i18n/strings_ta.i18n.json`**:
    - `library_v2.saved_desc`: Condense "உங்கள் ப்ராம்ப்ட் (Prompt) நூலகம்" to "உங்கள் ப்ராம்ப்ட் நூலகம்" or similar.
    - `library_v2.language_desc`: Condense if necessary.
- **`lib/i18n/strings_ml.i18n.json`**:
    - Fix duplicate `library_v2` key.
    - Condense descriptions to fit the small card height.

### 2. UI Layout Refinement (`lib/screens/library_screen.dart`)
- **Flexible Card Content**: Wrap title and description in `Flexible` or `Expanded` where appropriate to ensure they don't force overflow.
- **Adaptive Padding**: Reduce card padding from `24.0` to `16.0` or `20.0` based on card height.
- **Font Scaling**: Implement a small scaling factor for the "Small Cards" (Saved, Skills) to ensure they can handle multi-line text without overflowing the fixed container.
- **MaxLines & Ellipsis**: Set `maxLines: 2` and `overflow: TextOverflow.ellipsis` for descriptions to safeguard against extreme cases.

## Verification Plan

### Automated Checks
- Run `dart run slang` to fix duplicate keys and update strings.
- Run `flutter analyze` to ensure no UI breakages.

### Manual Verification
- Test on a device/emulator with Tamil and Malayalam active.
- Verify that the "Saved" card no longer shows a 20-pixel overflow.
- Ensure the layout remains static and covers the page correctly.
