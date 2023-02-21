import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
part 'walk_in_state_notifier.freezed.dart';

enum WalkInStatus { initial, loading, loaded, failure }

@freezed
class WalkInState with _$WalkInState {
  const factory WalkInState({
    required String email,
    required String password,
    required WalkInStatus status,
    required Exception? failure,
  }) = _WalkInState;

  factory WalkInState.initial() => const _WalkInState(
        email: '',
        password: '',
        failure: null,
        status: WalkInStatus.initial,
      );
}

class WalkInNotifier extends StateNotifier<WalkInState> {
  WalkInNotifier() : super(WalkInState.initial());

  void emailStr(String value) {
    state = state.copyWith(email: value);
  }

  void passwordStr(String value) {
    state = state.copyWith(password: value);
  }

  void login() {
    state = state.copyWith(status: WalkInStatus.loading);
    try {
      log('email ==> ${state.email}, password ===> ${state.password}');
      state = state.copyWith(status: WalkInStatus.loaded);
    } catch (e) {
      state = state.copyWith(
        status: WalkInStatus.loading,
        failure: Exception(e),
      );
    }
  }
}
