import 'package:flutter/material.dart';
import 'package:geat/core/theme/themes.dart';

enum AppTheme {
  lightThemeOriginal,
  lightThemeRed,
  lightThemeComic,
  darkTheme,
}

final appThemeData = {
  AppTheme.lightThemeOriginal: ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: ColorThemes.lightBackgroundColorOriginal,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorThemes.lightPrimaryColorOriginal,
      secondary: ColorThemes.lightAccentColorOriginal,
      shadow: ColorThemes.lightShadowColor,
    ),
    textTheme: AppTextTheme.lightTextThemeOriginal,
  ),
  AppTheme.lightThemeComic: ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: ColorThemes.comicBackgroundColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorThemes.comicPrimaryColor,
      secondary: ColorThemes.comicAccentColor,
      shadow: ColorThemes.comicShadowColor,
    ),
    textTheme: AppTextTheme.lightTextThemeOriginal,
  ),
  AppTheme.lightThemeRed: ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ColorThemes.lightBackgroundColorRed,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorThemes.lightPrimaryColorRed,
      secondary: ColorThemes.lightAccentColorRed,
      shadow: ColorThemes.lightShadowColorRed,
    ),
    textTheme: AppTextTheme.lightTextThemeRed,
  ),
  AppTheme.darkTheme: ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ColorThemes.darkBackgroundColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorThemes.darkPrimaryColor,
      secondary: ColorThemes.darkAccentColor,
      brightness: Brightness.dark,
      shadow: ColorThemes.darkShadowColor,
    ),
    textTheme: AppTextTheme.darkTextTheme,
  ),
};
