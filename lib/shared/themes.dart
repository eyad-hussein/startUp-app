import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ColorScheme kLightColorScheme = ThemeData().colorScheme.copyWith(
      primary: Colors.black,
      secondary: Colors.white,
      tertiary: const Color(0xFF8F959E),
      background: const Color(0xFFFEFEFE),
      error: const Color(0xFFEA4335),
    );

final ThemeData kTheme = ThemeData();

final TextTheme kSecondaryTextTheme = GoogleFonts.bebasNeueTextTheme(
  ThemeData().textTheme.copyWith(
        titleMedium: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w400,
        ),
        bodyLarge: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
      ),
);

final TextTheme kPrimaryTextTheme = GoogleFonts.openSansTextTheme(
  ThemeData().textTheme,
).copyWith(
  titleLarge: const TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w500,
  ),
  titleMedium: const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
  ),
  titleSmall: const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
  ),
  displayLarge: const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
  ),
  displayMedium: const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
  ),
  displaySmall: const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
  ),
);

final ThemeData kLightTheme = kTheme.copyWith(
  colorScheme: kLightColorScheme,
);

final ThemeData kDarkTheme = kTheme.copyWith();
