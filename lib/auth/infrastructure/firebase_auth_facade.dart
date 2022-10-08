import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:geat/auth/domain/auth_failure.dart';
import 'package:geat/auth/domain/i_auth_facade.dart';
import 'package:geat/core/constants/paths.dart';

class AuthFacade implements IAuthFacade {
  final FirebaseFirestore _firebaseFirestore;
  final auth.FirebaseAuth _firebaseAuth;
  final Set<String> takenUsernames = {};

  AuthFacade(this._firebaseFirestore, this._firebaseAuth);
  @override
  Stream<auth.User?> get user => _firebaseAuth.userChanges();

  @override
  Future<auth.User?> registerWithEmailAndPassword({
    required String userName,
    required String emailAddress,
    required String password,
  }) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      final user = credential.user;
      if (user != null) {
        _firebaseFirestore.collection(Paths.users).doc(user.uid).set({
          'id': user.uid,
          'username': userName,
          'email': emailAddress,
          'followers': 0,
          'following': 0,
          'dateJoined': FieldValue.serverTimestamp(),
        });
        return user;
      }
      return null;
    } on auth.FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw WeakPasswordException();
      } else if (e.code == 'email-already-in-use') {
        throw EmailAlreadyInUseException();
      } else if (e.code == 'invalid-email') {
        throw InvalidEmailAndPasswordCombinationException();
      } else {
        throw GenericAuthException();
      }
    } catch (_) {
      throw GenericAuthException();
    }
  }

  @override
  Future<auth.User?> walkIn({
    required String emailAddress,
    required String password,
  }) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      final user = credential.user;
      return user;
    } on auth.FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw UserNotFoundException();
      } else if (e.code == 'wrong-password') {
        throw InvalidEmailAndPasswordCombinationException();
      } else {
        throw GenericAuthException();
      }
    } catch (_) {
      throw GenericAuthException();
    }
  }

  @override
  Future<auth.User> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> sendEmailVerification() async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      await user.sendEmailVerification();
    } else {
      throw UserNotLoggedInException();
    }
  }

  @override
  Future<void> sendPasswordReset({required String toEmail}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: toEmail);
    } on auth.FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'firebase_auth/invalid-email':
          throw InvalidEmailException();
        case 'firebase_auth/user-not-found':
          throw UserNotFoundException();
        default:
          throw GenericAuthException();
      }
    } catch (_) {
      throw GenericAuthException();
    }
  }

  @override
  Future<void> changeUsername({required String username}) {
    // TODO: implement changeUsername
    throw UnimplementedError();
  }

  @override
  Future<void> updateEmail({required String email}) {
    // TODO: implement updateEmail
    throw UnimplementedError();
  }

  @override
  Future<bool> usernameCheck({required String username}) async {
    return _checkUsername(username)
        .then((value) => true)
        .onError((error, stackTrace) => false);
  }

  Future<void> _checkUsername(String username) async {
    final values = await _firebaseFirestore.collection(Paths.users).get();
    final List<DocumentSnapshot> document = values.docs;
    if (document.isNotEmpty) {
      for (final data in document) {
        final Map<String, dynamic>? value =
            data.data() as Map<String, dynamic>?;
        final takenUsername = value;
        if (takenUsername != null) {
          if (takenUsername.containsValue(username)) {
            throw ArgumentError('$username taken');
          }
        }
      }
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
