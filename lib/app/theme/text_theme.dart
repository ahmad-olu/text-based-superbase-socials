import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  const AppTextTheme._();
  static TextTheme textTheme = TextTheme(
    bodyLarge: GoogleFonts.architectsDaughter(
      textStyle: const TextStyle(
        fontSize: 14.1,
        fontWeight: FontWeight.w100,
      ),
    ),
    displayLarge: GoogleFonts.architectsDaughter(
      textStyle: const TextStyle(
        fontSize: 32.1,
        fontWeight: FontWeight.bold,
      ),
    ),
    displayMedium: GoogleFonts.architectsDaughter(
      textStyle: const TextStyle(
        fontSize: 21.1,
        fontWeight: FontWeight.w100,
      ),
    ),
    displaySmall: GoogleFonts.architectsDaughter(
      textStyle: const TextStyle(
        fontSize: 16.1,
        fontWeight: FontWeight.w100,
      ),
    ),
    headlineSmall: GoogleFonts.architectsDaughter(
      textStyle: const TextStyle(
        fontSize: 21.1,
        fontWeight: FontWeight.w100,
      ),
    ),
    titleLarge: GoogleFonts.architectsDaughter(
      textStyle: const TextStyle(
        fontSize: 20.1,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
