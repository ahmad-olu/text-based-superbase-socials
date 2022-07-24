part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.themeChanged(final AppTheme theme) = _ThemeChanged;
}
