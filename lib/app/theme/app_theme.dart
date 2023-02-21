import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:geat/app/theme/theme.dart';

enum AppTheme {
  lightThemeMandyRed,
  lightThemeEspresso,
  lightThemeComic,
  darkTheme,
}

final appThemeData = {
  AppTheme.lightThemeMandyRed: FlexThemeData.light(
    scheme: FlexScheme.damask,
    textTheme: AppTextTheme.textTheme,
  ),
  AppTheme.lightThemeEspresso: FlexThemeData.light(
    scheme: FlexScheme.espresso,
    textTheme: AppTextTheme.textTheme,
  ),
  AppTheme.lightThemeComic: FlexThemeData.light(
    scheme: FlexScheme.outerSpace,
    textTheme: AppTextTheme.textTheme,
  ),
  AppTheme.darkTheme: FlexThemeData.dark(
    scheme: FlexScheme.ebonyClay,
    textTheme: AppTextTheme.textTheme,
  ),
};
