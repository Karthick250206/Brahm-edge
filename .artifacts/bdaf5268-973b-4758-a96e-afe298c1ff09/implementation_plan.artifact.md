# Implementation Plan: Resize and Center Splash Screen Logo

The goal is to fix the splash screen logo appearing too large on certain devices and ensuring it is correctly centered on a white background.

## User Review Required

> [!IMPORTANT]
> I will explicitly define the logo size in the native Android resources. This will ensure that on modern devices (API 23+), the logo maintains a consistent, professional size (e.g., 100dp) rather than scaling up to fill the screen or appearing too large on small displays.

## Proposed Changes

### Android Native Resources

#### [MODIFY] [launch_background.xml](file:///D:/develop/Projects/Brahm-edge/android/app/src/main/res/drawable/launch_background.xml)
- Uncomment the logo item.
- Change the source from `@mipmap/launch_image` to `@mipmap/ic_launcher`.
- Set `android:gravity="center"` to ensure it's in the middle.

#### [MODIFY] [launch_background.xml](file:///D:/develop/Projects/Brahm-edge/android/app/src/main/res/drawable-v21/launch_background.xml)
- Uncomment the logo item.
- Change the source to `@mipmap/ic_launcher`.
- Add `android:width="100dp"` and `android:height="100dp"` to the `<item>` tag (supported in API 23+) to cap the size.
- Ensure the background remains `@android:color/white`.

#### [MODIFY] [styles.xml](file:///D:/develop/Projects/Brahm-edge/android/app/src/main/res/values/styles.xml) & [values-night/styles.xml](file:///D:/develop/Projects/Brahm-edge/android/app/src/main/res/values-night/styles.xml)
- Add the `android:windowSplashScreenIconSize` attribute (for Android 12+) to control the splash icon size if necessary. However, relying on `launch_background.xml` is often more consistent for Flutter's initial frame transition.

## Verification Plan

### Manual Verification
- **Multiple Device Sizes:** Run the app on devices/emulators with different screen resolutions (e.g., a small phone and a large tablet).
- **Verification:** Confirm the logo is centered, has a white background, and its size is proportional and not "overloading" the screen.
