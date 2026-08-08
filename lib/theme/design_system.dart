import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SystematicIntegrity {
  // --- Colors (Systematic Integrity Dark) ---
  static const primary = Color(0xFF6AD6E5);
  static const onPrimary = Color(0xFF00363C);
  
  static const secondary = Color(0xFF9CCCF1);
  static const onSecondary = Color(0xFF00344D);
  
  static const tertiary = Color(0xFFFFB786);
  
  // Tonal Layers (Elevation & Depth)
  static const level0 = Color(0xFF08151E); // Base Canvas (surface)
  static const level1 = Color(0xFF101D27); // Cards / Panels (surface-container-low)
  static const level2 = Color(0xFF2A3641); // Modals / Highest Elevation (surface-container-highest)
  
  // Neutral / Outline
  static const neutral = Color(0xFF879395); // outline
  static const outlineVariant = Color(0xFF14212B); // surface-container
  
  static const onSurface = Color(0xFFD7E4F2);
  static const onSurfaceVariant = Color(0xFFBCC9CB);
  
  static const error = Color(0xFFFFB4AB);

  // --- Spacing (4px baseline) ---
  static const spacingBase = 4.0;
  static const spacingXs = 4.0;
  static const spacingSm = 8.0;
  static const spacingMd = 16.0;
  static const spacingLg = 24.0;
  static const spacingXl = 32.0;
  static const marginMobile = 16.0;
  static const maxReadingWidth = 1280.0;

  // --- Radii (Soft language) ---
  static const radiusSm = 4.0;      // Standard Elements (Buttons, Inputs) - 0.25rem
  static const radiusLg = 8.0;      // Containers (Cards, Panels) - 0.5rem
  static const radiusXl = 12.0;     // Large Modals - 0.75rem
  static const radiusFull = 9999.0;

  // --- Typography (Noto Sans) ---
  static TextStyle headlineLg({bool mobile = false}) => GoogleFonts.notoSans(
    fontSize: mobile ? 24 : 32,
    fontWeight: FontWeight.w700,
    height: mobile ? 32/24 : 40/32,
    letterSpacing: mobile ? -0.01 * 24 : -0.02 * 32,
    color: onSurface,
  );

  static TextStyle headlineMd() => GoogleFonts.notoSans(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 32/24,
    color: onSurface,
  );

  static TextStyle headlineSm() => GoogleFonts.notoSans(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 28/20,
    color: onSurface,
  );

  static TextStyle bodyLg() => GoogleFonts.notoSans(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: 28/18,
    color: onSurface,
  );

  static TextStyle bodyMd() => GoogleFonts.notoSans(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 24/16,
    color: onSurface,
  );

  static TextStyle bodySm() => GoogleFonts.notoSans(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 20/14,
    color: onSurfaceVariant,
  );

  static TextStyle labelMd() => GoogleFonts.notoSans(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 16/14,
    letterSpacing: 0.01 * 14,
    color: primary,
  );

  static TextStyle labelSm() => GoogleFonts.notoSans(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 16/12,
    letterSpacing: 0.04 * 12,
    color: neutral,
  );

  // --- Decorations ---
  
  /// Level 1 Card: Content container with defining stroke
  static BoxDecoration cardDecoration({bool elevated = false}) => BoxDecoration(
    color: elevated ? level2 : level1,
    borderRadius: BorderRadius.circular(radiusLg),
    border: Border.all(
      color: outlineVariant, 
      width: 1,
    ),
  );

  static ThemeData get themeData => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: primary,
    scaffoldBackgroundColor: level0,
    canvasColor: level0,
    cardColor: level1,
    dialogTheme: const DialogThemeData(backgroundColor: level2),
    dividerColor: outlineVariant,
    colorScheme: const ColorScheme.dark(
      surface: level0,
      onSurface: onSurface,
      surfaceContainerLowest: Color(0xFF030F19),
      surfaceContainerLow: level1,
      surfaceContainer: outlineVariant,
      surfaceContainerHigh: Color(0xFF1F2B35),
      surfaceContainerHighest: level2,
      primary: primary,
      onPrimary: onPrimary,
      secondary: secondary,
      onSecondary: onSecondary,
      tertiary: tertiary,
      error: error,
      outline: neutral,
      outlineVariant: outlineVariant,
    ),
    textTheme: TextTheme(
      headlineLarge: headlineLg(),
      headlineMedium: headlineMd(),
      headlineSmall: headlineSm(),
      bodyLarge: bodyLg(),
      bodyMedium: bodyMd(),
      bodySmall: bodySm(),
      labelMedium: labelMd(),
      labelSmall: labelSm(),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: level0,
      elevation: 0,
      titleTextStyle: headlineSm(),
      iconTheme: const IconThemeData(color: onSurface),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: onPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radiusSm)),
        elevation: 0,
        textStyle: GoogleFonts.notoSans(fontWeight: FontWeight.w700),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: level0,
      selectedItemColor: primary,
      unselectedItemColor: neutral,
      selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      unselectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      type: BottomNavigationBarType.fixed,
      elevation: 0,
    ),
  );
}
