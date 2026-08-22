# Implementation Plan - Pillar Overview Screens

This plan implements the detailed overview screens for each of the four intelligence pillars (General, Workplace, Culture & Family, Personal Counsel), exactly replicating the provided designs.

## User Review Required

> [!IMPORTANT]
> I will be creating a single `PillarOverviewScreen` that dynamically renders the content for any pillar. I will also add all the textual content from your images to the translation system to ensure it works across all languages.

## Proposed Changes

### [Internationalization]

#### [MODIFY] [strings.i18n.json](file:///D:/develop/Projects/Brahm-edge/lib/i18n/strings.i18n.json)
- Add a new section `pillar_details` containing:
    - Analysis text for all 4 pillars.
    - Key capabilities list for all 4 pillars.
    - UI labels like "COMPREHENSIVE ANALYSIS", "KEY CAPABILITIES", and "Start Chat".

### [UI Layer]

#### [NEW] [pillar_overview_screen.dart](file:///D:/develop/Projects/Brahm-edge/lib/screens/pillar_overview_screen.dart)
- **Header**: Large card with the pillar's icon, bold title, and subtitle.
- **Analysis Section**: Left-aligned "COMPREHENSIVE ANALYSIS" label with the detailed paragraph below.
- **Capabilities Section**: "KEY CAPABILITIES" label followed by a list of items with checkmark icons.
- **Sticky Footer**: A primary teal "Start Chat" button fixed at the bottom.

#### [MODIFY] [pillars_info_screen.dart](file:///D:/develop/Projects/Brahm-edge/lib/screens/pillars_info_screen.dart)
- Update `_buildBentoCard` to accept a `pillarType` parameter.
- Wrap the cards in `GestureDetector` to navigate to the `PillarOverviewScreen` with the corresponding data.

## Verification Plan

### Manual Verification
1.  **Navigation**: Click on each of the 4 cards in the Pillars screen. Verify that the correct overview opens for each.
2.  **Visual Comparison**: Cross-reference the rendered screens with the provided images. Pay close attention to:
    - Font weights and sizes (Noto Sans).
    - Spacing between sections.
    - Icon colors and background opacity.
    - "Start Chat" button styling.
3.  **Responsiveness**: Ensure the text wraps correctly and the screen remains scrollable on smaller devices.
