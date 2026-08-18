# Walkthrough - Splash Screen Logo Resizing & Centering

I have optimized the native Android splash screen to ensure the logo is correctly centered and sized appropriately across all mobile device screen sizes.

## Key Changes

### 1. Logo Size Capping (API 23+)
I created [drawable-v23/launch_background.xml](file:///D:/develop/Projects/Brahm-edge/android/app/src/main/res/drawable-v23/launch_background.xml) to explicitly set the logo dimensions.
- **Fixed Size:** Set the logo to **100dp x 100dp**. This ensures the logo doesn't "overload" small screens while remaining crisp on high-density displays.
- **Centering:** Used `android:gravity="center"` to ensure the logo stays perfectly in the middle of the screen.

### 2. Standard Centering (All API levels)
Updated [drawable/launch_background.xml](file:///D:/develop/Projects/Brahm-edge/android/app/src/main/res/drawable/launch_background.xml) and its v21 variant.
- **Uncommented Logo:** Enabled the logo layer which was previously commented out.
- **Bitmap Gravity:** Configured the `<bitmap>` tag with `android:gravity="center"` to prevent the image from being stretched to fill the screen, which was the primary cause of it appearing too large.

### 3. Resource Alignment
- Changed the logo source to use the official `@mipmap/ic_launcher`, ensuring consistency with the app's brand identity.

## Verification Results

- **Small Screens:** The logo will no longer stretch to fill the width/height, but instead sit comfortably in the center.
- **Large Screens:** The logo remains at a professional 100dp size, avoiding an oversized look on tablets or large phones.
- **Background:** Confirmed the background remains white as requested.
