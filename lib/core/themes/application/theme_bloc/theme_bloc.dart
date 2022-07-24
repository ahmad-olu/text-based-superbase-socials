import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/core/themes/themes.dart';
import 'package:injectable/injectable.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(
          ThemeState(
            themeData: appThemeData[AppTheme.lightThemeOriginal]!,
          ),
        ) {
    on<ThemeEvent>((event, emit) {
      event.map(
        themeChanged: (e) async {
          emit(ThemeState(themeData: appThemeData[e.theme]!));
        },
      );
    });
  }
}
