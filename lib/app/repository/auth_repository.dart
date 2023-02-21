import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthRepository {
  Future<AuthUser> getCurrentUser() async {
    final user = await Amplify.Auth.getCurrentUser();
    return user;
  }

  Future<void> signUp(String username, String email, String password) async {
    try {
      final userAttributes = <CognitoUserAttributeKey, String>{
        CognitoUserAttributeKey.email: email.trim(),
        //CognitoUserAttributeKey.phoneNumber: '+15559101234',
        // additional attributes as needed
      };
      await Amplify.Auth.signUp(
        username: email.trim(),
        password: password.trim(),
        options: CognitoSignUpOptions(userAttributes: userAttributes),
      );
    } on AuthException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<void> confirmUser(String email, String confirmationCode) async {
    try {
      await Amplify.Auth.confirmSignUp(
        username: email.trim(),
        confirmationCode: confirmationCode.trim(),
      );
    } on AuthException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<void> signIn(String email, String password) async {
    try {
      await Amplify.Auth.signIn(
        username: email.trim(),
        password: password.trim(),
      );
    } on AuthException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<void> resetPassword(String email) async {
    try {
      await Amplify.Auth.resetPassword(
        username: email.trim(),
      );
    } on AmplifyException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<void> confirmResetPassword(
      String email, String newPassword, String confirmationCode) async {
    try {
      await Amplify.Auth.confirmResetPassword(
        username: email.trim(),
        newPassword: newPassword.trim(),
        confirmationCode: confirmationCode.trim(),
      );
    } on AmplifyException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<void> updatePassword(String oldPassword, String newPassword) async {
    try {
      await Amplify.Auth.updatePassword(
        newPassword: newPassword.trim(),
        oldPassword: oldPassword.trim(),
      );
    } on AmplifyException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<void> deleteUser() async {
    try {
      await Amplify.Auth.deleteUser();
    } on Exception catch (e) {
      throw Exception('Delete user failed with error: $e');
    }
  }

  Future<void> signOutCurrentUser() async {
    try {
      await Amplify.Auth.signOut();
    } on AuthException catch (e) {
      throw Exception(e.message);
    }
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository();
});
