# Implementation Plan - Special Token Filtering in Chat

The user reported that internal reasoning tokens like `</nothink>` are appearing in the chat response. This happens because the model is prompted to "silently identify" logic, and it sometimes uses XML-like tags (e.g., `<think>`, `<nothink>`) to wrap its internal reasoning. Since these are not standard Markdown/HTML tags that the UI filters, they appear as literal text.

## User Review Required

> [!NOTE]
> I will implement a filtering mechanism that removes these "thinking" tags.
> I also need to decide whether to hide the content *between* these tags. Since the system prompt specifically says "Do not reveal this reasoning", I will proceed with hiding both the tags and the content within them.

## Proposed Changes

### Reasoning Token Filtering

#### [MODIFY] [llm_inference_service.dart](file:///D:/Brahm-edge/lib/services/llm_inference_service.dart)
- Add a static utility method `cleanResponse(String text)` to strip unwanted tags and internal reasoning.
- Define a list of tags to filter: `<think>`, `</think>`, `<thought>`, `</thought>`, `<nothink>`, `</nothink>`, `<reasoning>`, `</reasoning>`.
- Use Regular Expressions to remove:
    1. The tags themselves.
    2. The content between matching pairs (e.g., `<think>...</think>`) if applicable.

#### [MODIFY] [chat_screen.dart](file:///D:/Brahm-edge/lib/screens/chat_screen.dart)
- In `_generateAiResponse`, apply `LlmInferenceService.cleanResponse(fullResponse)` before updating the message state.
- This ensures the UI always shows the "cleaned" version of the response.

## Verification Plan

### Automated Tests
- Verify that strings containing tags like `Hello <think>reasoning</think> World` are correctly cleaned to `Hello World`.
- Verify that incomplete tags during streaming (e.g., `Hello </no`) are handled gracefully (they might show up momentarily until the tag is completed and filtered, which is standard for streaming).

### Manual Verification
- Trigger responses that might contain reasoning (e.g., complex advice in the "General" or "Operational" pillars).
- Verify that no tags like `</nothink>` are visible in the chat bubbles.
