part of 'forgot_password_cubit.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required Username2Input username,
    required Password password,
    required ConfirmationCode confirmationCode,
    required FormzStatus status,
    required AuthFailure? authFailure,
  }) = _ForgotPasswordState;
  factory ForgotPasswordState.initial() => _ForgotPasswordState(
        username: Username2Input.pure(),
        password: Password.pure(),
        confirmationCode: ConfirmationCode.pure(),
        status: FormzStatus.pure,
        authFailure: null,
      );
}
