import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ColorScheme kLightColorScheme = ThemeData().colorScheme.copyWith(
      primary: const Color(0xFF1D1E20),
      secondary: const Color(0xFF8F959E),
      tertiary: const Color(0xFFF5F6FA),
      background: const Color(0xFFFEFEFE),
      error: const Color(0xFFEA4335),
    );

final ThemeData kTheme = ThemeData().copyWith(
  textTheme: GoogleFonts.interTextTheme(
    ThemeData().textTheme,
  ).copyWith(
    displayLarge: const TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.w500,
    ),
    displayMedium: const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    displaySmall: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
  ),
);

final ThemeData kLightTheme = kTheme.copyWith(
  colorScheme: kLightColorScheme,
);

final ThemeData kDarkTheme = kTheme.copyWith();
