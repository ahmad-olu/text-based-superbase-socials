import 'dart:io';

import 'package:geat/profile/profile.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class AwsUserRepository implements IUserRepository {
  @override
  Future<User> getUserWithId({required String userId}) {
    // TODO: implement getUserWithId
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser({required User user}) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  Future<String> uploadProfileImage({
    required String url,
    required File? image,
  }) {
    // TODO: implement uploadProfileImage
    throw UnimplementedError();
  }

  @override
  Future<List<User>> searchUsers({required String query}) {
    // TODO: implement searchUsers
    throw UnimplementedError();
  }

  @override
  void followUser({required String userId, required String followUserId}) {
    // TODO: implement followUser
  }

  @override
  Future<bool> isFollowing({
    required String userId,
    required String otherUserId,
  }) {
    // TODO: implement isFollowing
    throw UnimplementedError();
  }

  @override
  void unFollowUser({required String userId, required String unFollowUserId}) {
    // TODO: implement unFollowUser
  }
}
