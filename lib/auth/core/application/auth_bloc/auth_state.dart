part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({required String user}) = _Initial;
  const factory AuthState.unauthenticated({required String user}) =
      _Unauthenticated;
  const factory AuthState.authenticated({required String user}) =
      _Authenticated;
}
