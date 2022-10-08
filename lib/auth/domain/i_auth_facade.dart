import 'package:firebase_auth/firebase_auth.dart' as auth;

abstract class IAuthFacade {
  Stream<auth.User?> get user;
  Future<auth.User?> registerWithEmailAndPassword({
    required String userName,
    required String emailAddress,
    required String password,
  });

  Future<auth.User?> walkIn({
    required String emailAddress,
    required String password,
  });
  Future<void> sendEmailVerification();
  Future<void> sendPasswordReset({required String toEmail});
  Future<bool> usernameCheck({required String username});
  Future<void> changeUsername({required String username});
  Future<void> updateEmail({required String email});
  Future<auth.User> signInWithGoogle();
  Future<void> signOut();
}
