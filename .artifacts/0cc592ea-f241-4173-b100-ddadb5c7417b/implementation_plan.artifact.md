# Implementation Plan - High-Performance Model Validation

The current model validation process is a significant bottleneck, taking a long time to read and hash the 1.3GB model file using a pure-Dart SHA-256 implementation. This plan will optimize the process by switching to MD5 and utilizing native implementation for maximum speed.

## Proposed Changes

### [Dependencies]

#### [MODIFY] [pubspec.yaml](file:///D:/Brahm-edge/pubspec.yaml)
- **Wait**: I will first check if `background_downloader` provides a native hashing utility I can use directly. If not, I will add a high-performance native hashing package like `hash_lib` (which uses optimized code) or `crypto_native`.

### [Services]

#### [MODIFY] [model_download_service.dart](file:///D:/Brahm-edge/lib/services/model_download_service.dart)
- **Switch to MD5**: Update `downloadModel` and `_verifyChecksum` to use MD5 instead of SHA-256. MD5 is significantly faster for integrity checks on large files.
- **Native-Accelerated Hashing**: Replace the `sha256.bind(bytes).first` call (pure Dart) with a native implementation call. This avoids the Dart VM's stream overhead and uses the device's hardware-optimized instructions (C++/Java).
- **Refined Validation State**: Ensure the "Validating..." state remains in the UI but completes in a fraction of the time.

## Verification Plan

### Manual Verification
1. **Speed Benchmark**: Time the "Validating..." step before and after the change. Expectation: Reduction from 30s-60s to <5s on modern devices.
2. **Download Integrity**: Verify that a successful download still passes validation.
3. **Corruption Test**: Intentionally provide an incorrect MD5 hash to `downloadModel` and verify that the app correctly identifies the "corruption" and shows an error.
