import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/theme/theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'app_theme_provider.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const ThemeState._();
  const factory ThemeState({
    required ThemeData themeData,
    ThemeData? darkTheme,
  }) = _ThemeState;
}

class ThemeNotifier extends StateNotifier<ThemeState> {
  ThemeNotifier()
      : super(
          ThemeState(
            themeData: appThemeData[AppTheme.lightThemeMandyRed]!,
            darkTheme: appThemeData[AppTheme.darkTheme],
          ),
        );

  void themeChanged(AppTheme theme) {
    state = state.copyWith(themeData: appThemeData[theme]!);
  }
}

final appThemeProvider =
    StateNotifierProvider<ThemeNotifier, ThemeState>((_) => ThemeNotifier());
