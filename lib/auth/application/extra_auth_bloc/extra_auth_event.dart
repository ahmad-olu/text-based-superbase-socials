part of 'extra_auth_bloc.dart';

@freezed
class ExtraAuthEvent with _$ExtraAuthEvent {
  const factory ExtraAuthEvent.sendEmailVerification() = _SendEmailVerification;
  const factory ExtraAuthEvent.forgotPassword({required String? email}) =
      _ForgotPassword;
}
