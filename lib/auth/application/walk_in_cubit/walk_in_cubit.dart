import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:geat/auth/infrastructure/firebase_auth_facade.dart';
import 'package:geat/core/domain/email.dart';
import 'package:geat/core/domain/password.dart';

part 'walk_in_cubit.freezed.dart';
part 'walk_in_state.dart';

class WalkInCubit extends Cubit<WalkInState> {
  final AuthFacade _authFacade;
  WalkInCubit(
    this._authFacade,
  ) : super(WalkInState.initial());

  void emailChanged(String emailStr) {
    final email = Email.dirty(emailStr);
    emit(
      state.copyWith(
        email: email.valid ? email : Email.pure(emailStr),
        status: Formz.validate([email, state.password]),
      ),
    );
  }

  void passwordChanged(String passwordStr) {
    final password = Password.dirty(passwordStr);
    emit(
      state.copyWith(
        password: password.valid ? password : Password.pure(passwordStr),
        status: Formz.validate([state.email, password]),
      ),
    );
  }

  Future<void> walkIn() async {
    final email = Email.dirty(state.email.value);
    final password = Password.dirty(state.password.value);
    try {
      emit(
        state.copyWith(
          email: email,
          password: password,
          status: Formz.validate([email, password]),
        ),
      );
      if (state.status.isValidated) {
        emit(state.copyWith(status: FormzStatus.submissionInProgress));
        await _authFacade.walkIn(
          emailAddress: state.email.value,
          password: state.password.value,
        );

        emit(
          state.copyWith(
            status: FormzStatus.submissionSuccess,
          ),
        );
      }
    } on Exception catch (e) {
      log(e.toString());
      emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          failure: e,
        ),
      );
    }
  }
}
