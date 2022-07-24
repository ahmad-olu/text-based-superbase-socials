import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/core/core.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_state.dart';
part 'forgot_password_cubit.freezed.dart';

@injectable
class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final IAuthFacade _iAuthFacade;
  ForgotPasswordCubit(this._iAuthFacade) : super(ForgotPasswordState.initial());

  void usernameChanged(String usernameStr) {
    final username = Username2Input.dirty(usernameStr);
    emit(
      state.copyWith(
        username: username.valid ? username : Username2Input.pure(usernameStr),
        status:
            Formz.validate([state.password, username, state.confirmationCode]),
      ),
    );
  }

  void passwordChanged(String passwordStr) {
    final password = Password.dirty(passwordStr);
    emit(
      state.copyWith(
        password: password.valid ? password : Password.pure(passwordStr),
        status:
            Formz.validate([state.username, password, state.confirmationCode]),
      ),
    );
  }

  void confirmationCodeChanged(String confirmationCodeStr) {
    final confirmationCode = ConfirmationCode.dirty(confirmationCodeStr);
    emit(
      state.copyWith(
        confirmationCode: confirmationCode.valid
            ? confirmationCode
            : ConfirmationCode.pure(confirmationCodeStr),
        status: Formz.validate([state.username, confirmationCode]),
      ),
    );
  }

  Future<void> sendResetCode() async {
    final username = Username2Input.dirty(state.username.value);
    try {
      emit(
        state.copyWith(
          username: username,
          status: Formz.validate([username]),
        ),
      );
      if (state.status.isValidated) {
        emit(state.copyWith(status: FormzStatus.submissionInProgress));
        await _iAuthFacade.resetPassword(username: state.username.value);

        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          authFailure: const AuthFailure(),
        ),
      );
    }
  }

  Future<void> resetPassword() async {
    final username = Username2Input.dirty(state.username.value);
    final password = Password.dirty(state.password.value);
    final confirmationCode =
        ConfirmationCode.dirty(state.confirmationCode.value);
    try {
      emit(
        state.copyWith(
          username: username,
          password: password,
          confirmationCode: confirmationCode,
          status: Formz.validate([username, password, confirmationCode]),
        ),
      );
      if (state.status.isValidated) {
        emit(state.copyWith(status: FormzStatus.submissionInProgress));
        // await _iAuthFacade.resetPassword
        //todo:!! reset password
        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          authFailure: const AuthFailure(),
        ),
      );
    }
  }
}
