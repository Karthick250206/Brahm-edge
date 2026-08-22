# Implementation Plan - Functional Prompt Storage

Make the "Prompt Library" screen functional by implementing persistent storage for prompts using SQLite.

## User Review Required

> [!IMPORTANT]
> I will be adding a new SQLite database called `shared.db` to store global application data such as user-defined prompts. This separates prompt data from individual pillar message histories.

- Prompts will include a title, the prompt text, a favorite status, and associated pillars (stored as a comma-separated string for now).
- The UI will be updated to reflect the actual data stored in the database.

## Proposed Changes

### 1. Database Layer
#### [MODIFY] [database_service.dart](file:///D:/develop/Projects/Brahm-edge/lib/services/database_service.dart)
- Add `getSharedDatabase()` to manage `shared.db`.
- Define the `prompts` table: `id`, `title`, `text`, `isFavorite` (int), `associatedPillars` (text), `timestamp` (int).
- Implement CRUD methods: `insertPrompt`, `getPrompts`, `deletePrompt`, and `updatePromptFavorite`.

### 2. Model & State Management
#### [NEW] [prompt_model.dart](file:///D:/develop/Projects/Brahm-edge/lib/models/prompt_model.dart)
- Define a `Prompt` class with `toMap` and `fromMap` methods.
#### [NEW] [prompt_provider.dart](file:///D:/develop/Projects/Brahm-edge/lib/providers/prompt_provider.dart)
- Create a `PromptProvider` (ChangeNotifier) to manage the list of prompts and interface with `DatabaseService`.

### 3. Application Setup
#### [MODIFY] [main.dart](file:///D:/develop/Projects/Brahm-edge/lib/main.dart)
- Register `PromptProvider` in the `MultiProvider` block.
- Ensure `DatabaseService().init()` is called during startup.

### 4. UI Integration
#### [MODIFY] [prompt_library_screen.dart](file:///D:/develop/Projects/Brahm-edge/lib/screens/prompt_library_screen.dart)
- Use `context.read<PromptProvider>()` to save new prompts when the "Save" button is pressed.
- Use `context.watch<PromptProvider>()` to display the "Recently saved prompts" list.
- Implement "Delete" and "Favorite" icon functionality.
- Clear input fields after a successful save.

## Verification Plan

### Automated Tests
- Run `analyze` to ensure no syntax or type errors.

### Manual Verification
1. Navigate to **Prompt Library**.
2. Fill in a title and prompt text, then tap **Save**.
3. Verify the new prompt appears in the "Recently saved prompts" list below.
4. Restart the app and verify the prompts are still there (persistence check).
5. Tap the **Star** icon and verify the favorite status toggles and persists.
6. Tap the **Trash** icon and verify the prompt is removed.
7. Try adding a prompt with empty fields and ensure it handles validation (optional but good practice).
