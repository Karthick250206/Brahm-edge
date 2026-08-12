import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SystematicIntegrity {
  // --- Light Mode Colors (Welcome Screen Palette) ---
  static const lightBackground = Color(0xFFF7FAFF);
  static const lightSurface = Color(0xFFFFFFFF);
  static const lightPrimary = Color(0xFF00444F);
  static const lightOnSurface = Color(0xFF1E293B);
  static const lightOnSurfaceVariant = Color(0xFF64748B);
  static const lightOutline = Color(0xFFE2E8F0);

  // --- Dark Mode Colors (Profile Screen Palette) ---
  static const darkBackground = Color(0xFF0B1019);
  static const darkSurface = Color(0xFF161B22);
  static const darkPrimary = Color(0xFF00E5FF);
  static const darkOnSurface = Color(0xFFFFFFFF);
  static const darkOnSurfaceVariant = Color(0xFF8B949E);
  static const darkOutline = Color(0xFF2A3641);

  // --- Common Settings ---
  static const radiusLg = 16.0;
  static const radiusMd = 12.0;
  static const radiusSm = 8.0;

  static ThemeData get lightTheme => _buildTheme(
    brightness: Brightness.light,
    background: lightBackground,
    surface: lightSurface,
    primary: lightPrimary,
    onSurface: lightOnSurface,
    onSurfaceVariant: lightOnSurfaceVariant,
    outline: lightOutline,
  );

  static ThemeData get darkTheme => _buildTheme(
    brightness: Brightness.dark,
    background: darkBackground,
    surface: darkSurface,
    primary: darkPrimary,
    onSurface: darkOnSurface,
    onSurfaceVariant: darkOnSurfaceVariant,
    outline: darkOutline,
  );

  static ThemeData _buildTheme({
    required Brightness brightness,
    required Color background,
    required Color surface,
    required Color primary,
    required Color onSurface,
    required Color onSurfaceVariant,
    required Color outline,
  }) {
    final isDark = brightness == Brightness.dark;
    
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      primaryColor: primary,
      scaffoldBackgroundColor: background,
      canvasColor: background,
      cardColor: surface,
      dividerColor: outline,
      colorScheme: ColorScheme(
        brightness: brightness,
        primary: primary,
        onPrimary: isDark ? const Color(0xFF00363C) : Colors.white,
        secondary: isDark ? const Color(0xFF9CCCF1) : primary.withValues(alpha: 0.1),
        onSecondary: isDark ? const Color(0xFF00344D) : primary,
        error: const Color(0xFFBA1A1A),
        onError: Colors.white,
        surface: surface,
        onSurface: onSurface,
        onSurfaceVariant: onSurfaceVariant,
        outline: outline,
        surfaceContainerLow: surface,
        surfaceContainerHighest: isDark ? const Color(0xFF1F2B35) : const Color(0xFFEBF2F7),
      ),
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.notoSans(
          fontSize: 32,
          fontWeight: FontWeight.w800,
          color: onSurface,
        ),
        headlineMedium: GoogleFonts.notoSans(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: onSurface,
        ),
        titleLarge: GoogleFonts.notoSans(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: onSurface,
        ),
        bodyLarge: GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: onSurface,
        ),
        bodyMedium: GoogleFonts.notoSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: onSurface,
        ),
        labelLarge: GoogleFonts.notoSans(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: primary,
        ),
        labelSmall: GoogleFonts.notoSans(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.2,
          color: onSurfaceVariant,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: background,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: GoogleFonts.notoSans(
          color: onSurface,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: IconThemeData(color: onSurface),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: isDark ? const Color(0xFF00363C) : Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radiusMd)),
          textStyle: GoogleFonts.notoSans(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return Colors.white;
          return null;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primary;
          return null;
        }),
      ),
    );
  }
}
