import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geat/core/constants/paths.dart';
import 'package:geat/core/domain/geat_failure.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/notification/domain/notification_model.dart';
import 'package:geat/profile/domain/i_user_repository.dart';
import 'package:geat/profile/domain/user_model.dart';

class UserRepository implements IUserRepository {
  final FirebaseFirestore _firebaseFirestore;

  UserRepository(this._firebaseFirestore);
  @override
  Future<User?> getUserWithId({required String userId}) async {
    try {
      final doc =
          await _firebaseFirestore.collection(Paths.users).doc(userId).get();
      return doc.exists ? User.fromFireStore(doc) : null;
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Future<void> updateUser({required User user}) async {
    try {
      await _firebaseFirestore
          .collection(Paths.users)
          .doc(user.id)
          .update(user.toJson());
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Future<List<User>> searchUsers({required String query}) async {
    try {
      final userSnap = await _firebaseFirestore
          .collection(Paths.users)
          .where('username', isGreaterThanOrEqualTo: query)
          .get();
      return userSnap.docs.map((doc) => User.fromFireStore(doc)).toList();
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  void followUser({required String? userId, required String followUserId}) {
    try {
      // Add followUser to user's userFollowing.
      _firebaseFirestore
          .collection(Paths.following)
          .doc(userId)
          .collection(Paths.userFollowing)
          .doc(followUserId)
          .set({});
      // Add user to followUser's userFollowers.
      _firebaseFirestore
          .collection(Paths.followers)
          .doc(followUserId)
          .collection(Paths.userFollowers)
          .doc(userId)
          .set({});

      final notification = Notification(
        type: NotifType.follow,
        fromUser: User.empty.copyWith(id: userId!),
        date: DateTime.now(),
      );

      _firebaseFirestore
          .collection(Paths.notifications)
          .doc(followUserId)
          .collection(Paths.userNotifications)
          .add(notification.toJson());
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  void unFollowUser({required String? userId, required String unFollowUserId}) {
    try {
      // Remove unfollowUser from user's userFollowing.
      _firebaseFirestore
          .collection(Paths.following)
          .doc(userId)
          .collection(Paths.userFollowing)
          .doc(unFollowUserId)
          .delete();
      // Remove user from unfollowUser's userFollowers.
      _firebaseFirestore
          .collection(Paths.followers)
          .doc(unFollowUserId)
          .collection(Paths.userFollowers)
          .doc(userId)
          .delete();
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Future<bool> isFollowing(
      {required String? userId, required String otherUserId}) async {
    try {
      // is otherUser in user's userFollowing
      final otherUserDoc = await _firebaseFirestore
          .collection(Paths.following)
          .doc(userId)
          .collection(Paths.userFollowing)
          .doc(otherUserId)
          .get();
      return otherUserDoc.exists;
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Future<User> createNewUser(
      {required String username,
      required String emailAddress,
      required String userId}) {
    // TODO: implement createNewUser
    throw UnimplementedError();
  }
}
