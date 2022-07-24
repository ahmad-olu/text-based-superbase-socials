part of 'confirm_reg_form_cubit.dart';

@freezed
class ConfirmRegFormState with _$ConfirmRegFormState {
  const factory ConfirmRegFormState({
    required ConfirmationCode confirmationCode,
    required FormzStatus status,
    required AuthFailure failure,
  }) = _ConfirmRegFormState;
  factory ConfirmRegFormState.initial() => ConfirmRegFormState(
        confirmationCode: ConfirmationCode.pure(),
        status: FormzStatus.pure,
        failure: const AuthFailure(),
      );
}
