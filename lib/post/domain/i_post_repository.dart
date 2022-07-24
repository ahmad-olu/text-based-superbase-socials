import 'dart:io';

import 'package:geat/comments/comments.dart';
import 'package:geat/editor/editor.dart';
import 'package:geat/post/domain/model.dart';

abstract class IPostRepository {
  Future<void> createTextPost({required TextPost textPost});
  Future<void> createPicturePost({required PicturePost picturePost});
  Future<void> createReWrite({required Rewrite rewrite});
  Future<void> createComments({
    required TextPost textPost,
    required PicturePost picturePost,
    required Comments comment,
  });
  Stream<List<Future<TextPost>>> getUserTextPost({required String userId});
  Stream<List<Future<PicturePost>>> getUserpicturePost({
    required String userId,
  });
  Stream<List<Future<Rewrite>>> getPostReWrite({required String postId});
  Stream<List<Future<Comments>>> getPostComment({required String postId});
  Future<String> uploadTextPostImage({required File image});
  Future<List<String>> uploadPicturePostImage({required List<File?>? images});
  Future<List<TextPost>> getUserTextFeed({
    required String userId,
    String? lastPostId,
  });
  Future<List<PicturePost>> getUserPictureFeed({
    required String userId,
    String? lastPostId,
  });
  void createTextLike({required TextPost post, required String userId});
  void createPictureLike({required PicturePost post, required String userId});
  void createReWriteLike({required Rewrite post, required String userId});
  Future<Set<String>> getTextLikedPostIds({
    required String userid,
    required List<TextPost> posts,
  });
  Future<Set<String>> getPictureLikedPostIds({
    required String userid,
    required List<PicturePost> posts,
  });
  Future<Set<String>> getReWriteLikedPostIds({
    required String userid,
    required List<Rewrite> posts,
  });
  void deleteTextLiked({required String postId, required String userId});
  void deletePictureLiked({required String postId, required String userId});
  void deleteReWriteLiked({required String postId, required String userId});
}
