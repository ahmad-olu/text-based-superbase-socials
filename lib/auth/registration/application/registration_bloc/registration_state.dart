part of 'registration_bloc.dart';

enum RegistrationStatus { editing, submitting, failed, succeeded }

@freezed
class RegistrationState with _$RegistrationState {
  const RegistrationState._();
  const factory RegistrationState({
    required UsernameInput username,
    required bool isCheckingUsername,
    required Email email,
    required Password password,
    required RegistrationStatus status,
  }) = _RegistrationState;
  factory RegistrationState.initial() => _RegistrationState(
        username: const UsernameInput.pure(),
        email: Email.pure(),
        password: Password.pure(),
        isCheckingUsername: false,
        status: RegistrationStatus.editing,
      );

  bool get isBusy {
    return isCheckingUsername || status == RegistrationStatus.submitting;
  }

  bool get canSubmit {
    return Formz.validate([username, email, password]) ==
            FormzInputStatus.valid &&
        !isBusy;
  }
}
