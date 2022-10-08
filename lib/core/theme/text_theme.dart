import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  const AppTextTheme._();
  static TextTheme lightTextThemeOriginal = TextTheme(
    bodyText1: GoogleFonts.architectsDaughter(
      textStyle: TextStyle(
        fontSize: 14.1,
        color: Colors.grey.shade800,
        fontWeight: FontWeight.w100,
      ),
    ),
    headline1: GoogleFonts.architectsDaughter(
      textStyle: TextStyle(
        fontSize: 32.1,
        color: Colors.grey.shade700,
        fontWeight: FontWeight.bold,
      ),
    ),
    headline2: GoogleFonts.architectsDaughter(
      textStyle: TextStyle(
        fontSize: 21.1,
        color: Colors.grey.shade700,
        fontWeight: FontWeight.w100,
      ),
    ),
    headline3: GoogleFonts.architectsDaughter(
      textStyle: TextStyle(
        fontSize: 16.1,
        color: Colors.grey.shade900,
        fontWeight: FontWeight.w100,
      ),
    ),
    headline5: GoogleFonts.architectsDaughter(
      textStyle: TextStyle(
        fontSize: 21.1,
        color: Colors.grey.shade800,
        fontWeight: FontWeight.w100,
      ),
    ),
    headline6: GoogleFonts.architectsDaughter(
      textStyle: TextStyle(
        fontSize: 20.1,
        color: Colors.grey.shade900,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
  static TextTheme lightTextThemeRed = TextTheme(
    bodyText1: GoogleFonts.architectsDaughter(
      textStyle: const TextStyle(
        fontSize: 14.1,
        color: Color.fromARGB(255, 206, 61, 61),
        fontWeight: FontWeight.w100,
      ),
    ),
    headline1: GoogleFonts.architectsDaughter(
      textStyle: const TextStyle(
        fontSize: 32.1,
        color: Color.fromARGB(255, 206, 61, 61),
        fontWeight: FontWeight.bold,
      ),
    ),
    headline2: GoogleFonts.architectsDaughter(
      textStyle: const TextStyle(
        fontSize: 21.1,
        color: Color.fromARGB(255, 206, 61, 61),
        fontWeight: FontWeight.w100,
      ),
    ),
    headline3: GoogleFonts.architectsDaughter(
      textStyle: TextStyle(
        fontSize: 16.1,
        color: Colors.grey.shade900,
        fontWeight: FontWeight.w100,
      ),
    ),
    headline5: GoogleFonts.architectsDaughter(
      textStyle: TextStyle(
        fontSize: 21.1,
        color: Colors.grey.shade800,
        fontWeight: FontWeight.w100,
      ),
    ),
    headline6: GoogleFonts.architectsDaughter(
      textStyle: TextStyle(
        fontSize: 20.1,
        color: Colors.grey.shade900,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.architectsDaughter(
      textStyle: TextStyle(
        fontSize: 14.1,
        color: Colors.grey.shade100,
        fontWeight: FontWeight.w100,
      ),
    ),
    headline1: GoogleFonts.architectsDaughter(
      textStyle: TextStyle(
        fontSize: 32.1,
        color: Colors.grey.shade400,
        fontWeight: FontWeight.bold,
      ),
    ),
    headline2: GoogleFonts.architectsDaughter(
      textStyle: TextStyle(
        fontSize: 21.1,
        color: Colors.grey.shade400,
        fontWeight: FontWeight.w100,
      ),
    ),
    headline3: GoogleFonts.architectsDaughter(
      textStyle: TextStyle(
        fontSize: 16.1,
        color: Colors.grey.shade400,
        fontWeight: FontWeight.w100,
      ),
    ),
    headline5: GoogleFonts.architectsDaughter(
      textStyle: TextStyle(
        fontSize: 21.1,
        color: Colors.grey.shade900,
        fontWeight: FontWeight.w100,
      ),
    ),
    headline6: GoogleFonts.architectsDaughter(
      textStyle: TextStyle(
        fontSize: 20.1,
        color: Colors.grey.shade400,
        fontWeight: FontWeight.w100,
      ),
    ),
  );
}
