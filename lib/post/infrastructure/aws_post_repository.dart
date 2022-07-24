import 'dart:io';

import 'package:geat/comments/domain/model.dart';
import 'package:geat/editor/domain/model.dart';
import 'package:geat/editor/domain/rewrite_model.dart';
import 'package:geat/post/domain/i_post_repository.dart';
import 'package:geat/post/domain/model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPostRepository)
class AwsPostRepository implements IPostRepository {
  @override
  Future<void> createComments({
    required TextPost textPost,
    required PicturePost picturePost,
    required Comments comment,
  }) {
    // TODO: implement createComments
    throw UnimplementedError();
  }

  @override
  void createPictureLike({required PicturePost post, required String userId}) {
    // TODO: implement createPictureLike
  }

  @override
  Future<void> createPicturePost({required PicturePost picturePost}) {
    // TODO: implement createPicturePost
    throw UnimplementedError();
  }

  @override
  Future<void> createReWrite({required Rewrite rewrite}) {
    // TODO: implement createReWrite
    throw UnimplementedError();
  }

  @override
  void createReWriteLike({required Rewrite post, required String userId}) {
    // TODO: implement createReWriteLike
  }

  @override
  void createTextLike({required TextPost post, required String userId}) {
    // TODO: implement createTextLike
  }

  @override
  Future<void> createTextPost({required TextPost textPost}) {
    // TODO: implement createTextPost
    throw UnimplementedError();
  }

  @override
  void deletePictureLiked({required String postId, required String userId}) {
    // TODO: implement deletePictureLiked
  }

  @override
  void deleteReWriteLiked({required String postId, required String userId}) {
    // TODO: implement deleteReWriteLiked
  }

  @override
  void deleteTextLiked({required String postId, required String userId}) {
    // TODO: implement deleteTextLiked
  }

  @override
  Future<Set<String>> getPictureLikedPostIds({
    required String userid,
    required List<PicturePost> posts,
  }) {
    // TODO: implement getPictureLikedPostIds
    throw UnimplementedError();
  }

  @override
  Stream<List<Future<Comments>>> getPostComment({required String postId}) {
    // TODO: implement getPostComment
    throw UnimplementedError();
  }

  @override
  Stream<List<Future<Rewrite>>> getPostReWrite({required String postId}) {
    // TODO: implement getPostReWrite
    throw UnimplementedError();
  }

  @override
  Future<Set<String>> getReWriteLikedPostIds({
    required String userid,
    required List<Rewrite> posts,
  }) {
    // TODO: implement getReWriteLikedPostIds
    throw UnimplementedError();
  }

  @override
  Future<Set<String>> getTextLikedPostIds({
    required String userid,
    required List<TextPost> posts,
  }) {
    // TODO: implement getTextLikedPostIds
    throw UnimplementedError();
  }

  @override
  Future<List<PicturePost>> getUserPictureFeed({
    required String userId,
    String? lastPostId,
  }) {
    // TODO: implement getUserPictureFeed
    throw UnimplementedError();
  }

  @override
  Future<List<TextPost>> getUserTextFeed({
    required String userId,
    String? lastPostId,
  }) {
    // TODO: implement getUserTextFeed
    throw UnimplementedError();
  }

  @override
  Stream<List<Future<TextPost>>> getUserTextPost({required String userId}) {
    // TODO: implement getUserTextPost
    throw UnimplementedError();
  }

  @override
  Stream<List<Future<PicturePost>>> getUserpicturePost({
    required String userId,
  }) {
    // TODO: implement getUserpicturePost
    throw UnimplementedError();
  }

  @override
  Future<List<String>> uploadPicturePostImage({required List<File?>? images}) {
    // TODO: implement uploadPicturePostImage
    throw UnimplementedError();
  }

  @override
  Future<String> uploadTextPostImage({required File image}) {
    // TODO: implement uploadTextPostImage
    throw UnimplementedError();
  }
}
