import 'dart:io';

import 'package:geat/profile/domain/user_model.dart';

abstract class IUserRepository {
  Future<User?> getUserWithId({required String userId});
  Future<User> createNewUser({
    required String username,
    required String emailAddress,
    required String userId,
  });
  Future<void> updateUser({required User user});
  Future<List<User>> searchUsers({required String query});
  void followUser({required String? userId, required String followUserId});
  void unFollowUser({required String? userId, required String unFollowUserId});
  Future<bool> isFollowing({
    required String? userId,
    required String otherUserId,
  });
}
