part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authUserChanged({required auth.User? user}) =
      _AuthUserChanged;
  const factory AuthEvent.signOut() = _SignOut;
}
