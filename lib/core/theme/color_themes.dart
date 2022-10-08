import 'package:flutter/material.dart';

class ColorThemes {
  const ColorThemes._();
  // Light Theme original
  static Color lightBackgroundColorOriginal =
      const Color.fromARGB(255, 227, 230, 187);
  static Color lightPrimaryColorOriginal =
      const Color.fromARGB(197, 230, 196, 4);
  static Color lightAccentColorOriginal =
      const Color.fromARGB(255, 197, 113, 65);
  static Color lightShadowColor =
      Color.fromARGB(255, 32, 23, 23).withOpacity(.84);

  // Light Theme comic
  static Color comicBackgroundColor = Color.fromARGB(255, 253, 254, 255);
  static Color comicPrimaryColor = Color.fromARGB(255, 0, 0, 0);
  static Color comicAccentColor = Color.fromARGB(121, 44, 56, 61);
  static Color comicShadowColor =
      Color.fromARGB(255, 32, 23, 23).withOpacity(.84);

  // Light Theme red
  static Color lightBackgroundColorRed =
      const Color.fromARGB(255, 236, 171, 171);
  static Color lightPrimaryColorRed = const Color.fromARGB(197, 134, 9, 9);
  static Color lightAccentColorRed = const Color.fromARGB(132, 155, 148, 47);
  static Color lightShadowColorRed =
      Color.fromARGB(255, 133, 48, 48).withOpacity(.84);

  // Dark Theme
  static Color darkBackgroundColor = const Color.fromARGB(108, 7, 72, 126);
  static Color darkPrimaryColor = const Color.fromARGB(255, 2, 43, 75);
  static Color darkAccentColor = const Color.fromARGB(255, 68, 94, 104);
  static Color darkShadowColor = const Color(0xFFD3D3D3).withOpacity(.84);

  //static Color lightTextColor = Colors.grey.shade900;

  //static Color darkTextColor = Colors.grey.shade400;
}

final kShadowColor = const Color(0xFFD3D3D3).withOpacity(.84);
