part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.usernameChanged({
    required String usernameStr,
  }) = _UsernameChanged;
  const factory RegistrationEvent.usernameUnfocused() = _UsernameUnfocused;
  const factory RegistrationEvent.emailChanged({required String emailStr}) =
      _EmailChanged;
  const factory RegistrationEvent.emailUnfocused() = _EmailUnfocused;
  const factory RegistrationEvent.passwordChanged({
    required String passwordStr,
  }) = _PasswordChanged;
  const factory RegistrationEvent.passwordUnfocused() = _PasswordUnfocused;
  const factory RegistrationEvent.formSubmitted() = _FormSubmitted;
}
