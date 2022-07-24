import 'package:flutter/material.dart';
import 'package:geat/core/themes/themes.dart';

enum AppTheme {
  lightThemeOriginal,
  lightThemeRed,
  darkTheme,
}

final appThemeData = {
  AppTheme.lightThemeOriginal: ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: ColorThemes.lightBackgroungColorOriginal,
    //primaryColor: ColorThemes.lightPrimaryColorOriginal,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorThemes.lightPrimaryColorOriginal,
      secondary: ColorThemes.lightAccentColorOriginal,
    ),
    textTheme: AppTextTheme.lightTextThemeOriginal,
  ),
  AppTheme.lightThemeRed: ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ColorThemes.lightBackgroungColorRed,
    //primaryColor: ColorThemes.lightPrimaryColorRed,
    colorScheme: ColorScheme.fromSwatch(
      accentColor: ColorThemes.lightAccentColorRed,
      primarySwatch: Colors.red,
    ),
    textTheme: AppTextTheme.lightTextThemeRed,
  ),
  AppTheme.darkTheme: ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ColorThemes.darkBackgroungColor,
    //primaryColor: ColorThemes.darkPrimaryColor,
    colorScheme: ColorScheme.fromSwatch(
      //accentColor: ColorThemes.darkAccentColor,
      primarySwatch: Colors.blueGrey,
      brightness: Brightness.dark,
    ),
    textTheme: AppTextTheme.darkTextTheme,
  ),
};
