import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const AuthFailure._();
  const factory AuthFailure() = AuthFailure2;
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.invalidParameter() = InvalidParameter;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.usernameAlreadyInUse() = DisplaynameAlreadyInUse;
  const factory AuthFailure.invalidUsernameOrPasswordCombination() =
      InvalidEmailOrPasswordCombination;
  const factory AuthFailure.argumentError() = _ArgumentError;
}
