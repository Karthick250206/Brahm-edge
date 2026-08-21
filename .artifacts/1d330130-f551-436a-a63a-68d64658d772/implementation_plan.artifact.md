# Implementation Plan - Fix Data Management Overflows (Tamil)

This plan specifically targets the remaining overflow issues in the `DataManagementScreen` visible in the Tamil language, where button labels are exceptionally long.

## User Review Required

> [!IMPORTANT]
> I will be wrapping the text within buttons and the app bar in `Flexible` widgets with `TextOverflow.ellipsis`. This ensures that even if a translation is very long, it will truncate gracefully rather than breaking the layout with a "Right Overflow".

## Proposed Changes

### [UI Layer]

#### [MODIFY] [data_management_screen.dart](file:///D:/develop/Projects/Brahm-edge/lib/screens/data_management_screen.dart)

- **App Bar Title**: Remove the invalid `Expanded` wrapper and ensure the `Text` handles overflow properly within the `AppBar` constraints.
- **"Select models to delete" Button**: Wrap the button text in `Flexible` and add `overflow: TextOverflow.ellipsis`.
- **"Delete all" Button**: Wrap the label in `Flexible` and add `overflow: TextOverflow.ellipsis` to prevent the red warning icon from being pushed off or the text from overflowing the button container.
- **Pillar Card Actions**: Ensure the "Delete all" button within the pillar card also handles long text gracefully.

## Verification Plan

### Manual Verification
1.  **Tamil Language Check**: Switch to Tamil and navigate to the Data Management screen.
2.  **Visual Audit**: Confirm that the "Select models to delete" and "Delete all" buttons no longer show overflow stripes.
3.  **UI Integrity**: Verify that the buttons are still functional and the text remains readable (even if truncated in extreme cases).
