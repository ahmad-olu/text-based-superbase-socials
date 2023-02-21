import 'dart:async';
import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
part 'sign_up_state_notifier.freezed.dart';

enum SignUpStatus {
  initial,
  loading,
  loaded,
  failure,
}

enum UsernameCheckStatus {
  editing,
  submitting,
  failed,
  succeeded,
}

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required String username,
    required String email,
    required String password,
    required SignUpStatus status,
    required Exception? failure,
  }) = _SignUpState;

  factory SignUpState.initial() => const _SignUpState(
        username: '',
        email: '',
        password: '',
        failure: null,
        status: SignUpStatus.initial,
      );
}

class SignUpNotifier extends StateNotifier<SignUpState> {
  SignUpNotifier() : super(SignUpState.initial());

  void usernameChanged(String value) {
    state = state.copyWith(username: value);
  }

  void emailStr(String value) {
    state = state.copyWith(email: value);
  }

  void passwordStr(String value) {
    state = state.copyWith(password: value);
  }

  void confirmedUsername() {}

  void signUp() {
    state = state.copyWith(status: SignUpStatus.loading);
    try {
      log('email ==> ${state.email}, password ===> ${state.password}, username ===> ${state.username}');
      state = state.copyWith(status: SignUpStatus.loaded);
    } catch (e) {
      state = state.copyWith(
        status: SignUpStatus.loading,
        failure: Exception(e),
      );
    }
  }
}
