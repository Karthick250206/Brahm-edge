# Walkthrough - UI Enhancements & Refined Model Attention Flow

I have implemented several UI improvements to the Chat screen, refined the onboarding flow, and introduced a polished "Model Attention" banner.

## Changes Made

### Chat Interface & Model Management
- **Refined Model Attention Banner**: Implemented a centered attention banner that appears when the AI model is missing.
    - **Warning Label**: "Model not detected".
    - **Enhanced Description**: "Chat requires an intelligence to power it" (Increased to size `18` to span two lines).
    - **Primary Action**: "Download the model to start chatting" (Increased to size `18` for better visibility).
    - **Simplified UI**: Removed the "Choose another model" link and perfectly centered all content for a professional look.
- **Markdown Rendering**: Integrated `flutter_markdown` to correctly display bold text, lists, and other formatting from AI responses.
- **Top-Down Dropdown**: Replaced the bottom sheet pillar selector with a `PopupMenuButton` for a streamlined "dropdown" experience.
- **Response Cleaning**: Implemented a filtering mechanism in `LlmInferenceService` to strip internal reasoning tokens (like `</nothink>`, `<think>`) from the UI.

### Consistency & Sidebar
- **Rename to "Daily Journal"**: Renamed the "Defence" pillar to **Daily Journal** across the entire app.
- **Sidebar Cleanup**: Removed the "RECENT ANALYSIS" label while keeping the chat history list accessible.
- **Unified Icons**: Standardized icons across all screens (e.g., `edit_note` for Daily Journal).

## Verification Results

### Manual Verification
- [x] "Model needs attention" banner appears when the model is missing.
- [x] Banner description is centered and spans two lines.
- [x] Primary button is centered and navigates correctly to the Library.
- [x] "Choose another model" label is removed.
- [x] Technical `MODEL_FILE_NOT_FOUND` error is hidden in the Library screen.
- [x] Chat messages render Markdown (bold, lists) correctly.

> [!IMPORTANT]
> The increased font size for the banner description ensures it naturally wraps to two lines while emphasizing the requirement for a local AI model.
