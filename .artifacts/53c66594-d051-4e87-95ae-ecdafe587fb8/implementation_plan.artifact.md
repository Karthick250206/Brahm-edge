# Implementation Plan - Data Management & Retention Screen

I will create a new screen "Data Management & Retention" that exactly replicates the provided design. This screen will allow users to view storage usage, manage downloaded models, set auto-deletion policies, and manage repository pillars.

## User Review Required

> [!IMPORTANT]
> The screen features a complex segmented progress bar for storage and multiple interactive cards for model and pillar management. I will implement these as visual replicas with placeholder logic for this iteration.

> [!NOTE]
> The "Delete all data" button at the bottom includes a subtext "Requires App Lock Re-authentication". I will integrate this with the existing `SecurityProvider` to trigger an authentication check before proceeding with a simulated deletion.

## Proposed Changes

### [Screens]

#### [NEW] [data_management_screen.dart](file:///D:/develop/Projects/mobile-app/lib/screens/data_management_screen.dart)
- **Theme**: Deep navy (`#0B1019`) background with dark grey cards (`#161B22`) and cyan accents (`#00E5FF`).
- **Storage Summary**:
    - "Total Used" header.
    - A custom linear segmented bar with different colors for each category.
    - A grid/legend section showing colored dots and category labels.
- **Model Management**:
    - A dedicated card for deleting models with an outlined red button "SELECT MODELS TO DELETE".
- **Retention Settings**:
    - A card for auto-deletion with a themed dropdown/selector (defaulting to "30 Days").
- **Repository Pillars**:
    - A list of pillar cards (e.g., "Pillar 1: General Assistant") showing space usage and active instances.
    - Each card will have "View Chats" and "Delete All" actions.
- **Global Delete Action**:
    - A large outlined red button "Delete all data" with a warning icon.
    - Integration with `SecurityProvider` for the authentication subtext.
- **Navigation**: Matching bottom navigation bar with the "You" tab active and the wave indicator.

#### [MODIFY] [profile_screen.dart](file:///D:/develop/Projects/mobile-app/lib/screens/profile_screen.dart)
- Link the "Chat Data management and retention" card to navigate to the new `DataManagementScreen`.

## Verification Plan

### Manual Verification
- Verify the layout matches the provided image exactly.
- Test navigation from `ProfileScreen` to `DataManagementScreen`.
- Verify the segmented progress bar colors and alignment.
- Ensure all cards and buttons are styled correctly (red outlines/text where appropriate).
- Check that the "You" tab is correctly highlighted in the bottom navigation.
