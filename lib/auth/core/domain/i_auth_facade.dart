import 'package:dartz/dartz.dart';
import 'package:geat/auth/core/domain/auth_failure.dart';

abstract class IAuthFacade {
  Future<Option<String>> get user;
  Future<bool> displaynameCheck({required String displayname});
  Future<Either<AuthFailure, Unit>> walkIn({
    required String username,
    required String password,
  });
  Future<Either<AuthFailure, Unit>> signUp({
    required String username,
    required String emailAddress,
    required String password,
  });
  Future<Either<AuthFailure, Unit>> confirmSignUp({
    required String username,
    required String confirmationCode,
  });
  Future<Either<AuthFailure, Unit>> changeUsername({required String username});
  Future<Either<AuthFailure, Unit>> updateEmail({required String email});
  Future<Either<AuthFailure, Unit>> updateEmailConfirmationCode({
    required String email,
    required String confirmationCode,
  });
  Future<Either<AuthFailure, Unit>> resendEmailConfirmationCode({
    required String email,
    required String confirmationCode,
  });
  Future<Either<AuthFailure, Unit>> resetPassword({required String username});
  Future<Either<AuthFailure, Unit>> changePassword({
    required String newPassword,
    required String oldPassword,
  });
  Future<Either<AuthFailure, Unit>> walkOut();
}
