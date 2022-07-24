import 'package:dartz/dartz.dart';
import 'package:geat/auth/core/core.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class AwsAuthFacade implements IAuthFacade {
  @override
  // TODO: implement user
  Future<Option<String>> get user => throw UnimplementedError();

  @override
  Future<Either<AuthFailure, Unit>> changePassword({
    required String newPassword,
    required String oldPassword,
  }) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> changeUsername({required String username}) {
    // TODO: implement changeUsername
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> confirmSignUp({
    required String username,
    required String confirmationCode,
  }) {
    // TODO: implement confirmSignUp
    throw UnimplementedError();
  }

  @override
  Future<bool> displaynameCheck({required String displayname}) {
    // TODO: implement displaynameCheck
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> resendEmailConfirmationCode({
    required String email,
    required String confirmationCode,
  }) {
    // TODO: implement resendEmailConfirmationCode
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> resetPassword({required String username}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signUp({
    required String username,
    required String emailAddress,
    required String password,
  }) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> updateEmail({required String email}) {
    // TODO: implement updateEmail
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> updateEmailConfirmationCode({
    required String email,
    required String confirmationCode,
  }) {
    // TODO: implement updateEmailConfirmationCode
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> walkIn({
    required String username,
    required String password,
  }) {
    // TODO: implement walkIn
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> walkOut() {
    // TODO: implement walkOut
    throw UnimplementedError();
  }
}
