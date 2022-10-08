part of 'auth_bloc.dart';

enum AuthStatus { unKnown, emailNotVerified, authenticated, unAuthenticated }

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    auth.User? user,
    @Default(AuthStatus.unKnown) AuthStatus status,
  }) = _AuthState;

  factory AuthState.unKnown() => const _AuthState();
  factory AuthState.unauthenticated() =>
      const _AuthState(status: AuthStatus.unAuthenticated);
  factory AuthState.emailNotVerified({required auth.User? user}) =>
      _AuthState(user: user, status: AuthStatus.emailNotVerified);
  factory AuthState.authenticated({required auth.User? user}) =>
      _AuthState(user: user, status: AuthStatus.authenticated);
}
