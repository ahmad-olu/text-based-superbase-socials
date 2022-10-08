part of 'registration_cubit.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    required Email email,
    required Password password,
    required FormzStatus status,
    required Exception? failure,
  }) = _RegistrationState;
  factory RegistrationState.initial() => _RegistrationState(
        email: Email.pure(),
        password: Password.pure(),
        status: FormzStatus.pure,
        failure: null,
      );
}
