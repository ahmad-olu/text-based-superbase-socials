part of 'extra_auth_bloc.dart';

@freezed
class ExtraAuthState with _$ExtraAuthState {
  const factory ExtraAuthState.initial({
    required bool isLoading,
    required bool sent,
  }) = _Initial;
  const factory ExtraAuthState.forgotPasswordState({
    required bool isLoading,
    required Exception? exception,
    required bool sent,
    //hasSentEmail: false,
  }) = _ForgotPasswordState;
  const factory ExtraAuthState.needsVerification({
    required bool isLoading,
    required bool sent,
  }) = _NeedsVerification;
}
