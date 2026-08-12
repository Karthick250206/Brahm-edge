# Implementation Plan - Dynamic Storage Monitoring

I will implement a dynamic storage tracking system that scans the device for actual model weights and chat database sizes, replacing the static data on the Data Management screen.

## User Review Required

> [!IMPORTANT]
> The storage limit is currently set to **10 GB** in the UI. I will maintain this cap for the percentage calculations. If the real data exceeds 10 GB, the bar will represent the relative distribution within that limit.

## Proposed Changes

### [Services]

#### [NEW] [storage_management_service.dart](file:///D:/develop/Projects/mobile-app/lib/services/storage_management_service.dart)
- Create a service to calculate file sizes on disk.
- **`getModelStorageSize()`**: Sums the size of all files in the `models/` directory.
- **`getPillarStorageSize(String pillar)`**: Gets the size of the specific SQLite database for a pillar.
- **`getTotalUsedStorage()`**: Sums models + all pillar databases.
- Provide a `Stream` or `notifyListeners()` to update the UI when storage changes.

### [Screens]

#### [MODIFY] [data_management_screen.dart](file:///D:/develop/Projects/mobile-app/lib/screens/data_management_screen.dart)
- Integrate `StorageManagementService`.
- Replace static "4.2 GB" with the real total used value.
- Refactor the **Segmented Bar**:
    - Calculate the width of each segment (Model, General, Defense, etc.) as a percentage of the 10GB limit.
    - Add a "Model Weights" segment to the bar.
- Update the **Legend Grid** to show real sizes (e.g., "General - 45MB") if desired, or keep labels and just link them to the bar.

## Verification Plan

### Manual Verification
- **Model Check**: Download a model (e.g., Gemma) and verify the "Model Weights" segment and "Total Used" count increases on the Data Management screen.
- **Chat Check**: Send several long messages in a specific pillar (e.g., "General"), and verify that its segment in the storage bar grows.
- **Empty State**: Verify that on a fresh install, the used storage is near zero.
- **Theme Check**: Ensure the new dynamic labels and bar colors look correct in both Light and Dark modes.
