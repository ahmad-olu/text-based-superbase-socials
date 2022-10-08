import 'dart:io';

import 'package:geat/comment/domain/comment_model.dart';
import 'package:geat/core/domain/model/category_model.dart';
import 'package:geat/core/domain/model/saved_post_model.dart';
import 'package:geat/post/domain/comic_post_model.dart';
import 'package:geat/post/domain/text_post_model.dart';
import 'package:geat/profile/domain/user_model.dart';
import 'package:geat/reImagined/domain/reImagied_model.dart';

abstract class IPostRepository {
  Future<User> getUser({required String userId});
  Future<void> createTextPost({required TextPost textPost});
  Future<void> createComicPost({required ComicPost comicPost});
  Future<void> createTextReImagined(
      {required TextPost textPost, required ReImagined reImagined});
  Future<void> createTextComments({
    required TextPost textPost,
    required Comment comment,
  });
  Future<void> createComicComments({
    required ComicPost comicPost,
    required Comment comment,
  });
  Stream<List<Future<TextPost?>>> getAllTextPost();
  Stream<List<Future<ComicPost?>>> getAllComicPost();
  Stream<List<Future<TextPost?>>> getUserTextPost({required String userId});
  Stream<List<Future<ComicPost?>>> getUserComicPost({
    required String userId,
  });
  Stream<List<Future<ReImagined?>>> getTextPostReWrite({
    required String postId,
  });
  Stream<List<Future<Comment>>> getTextPostComment({required String postId});
  Stream<List<Future<Comment>>> getComicPostComment({required String postId});
  Future<List<TextPost?>> getUserTextFeed({
    required String? userId,
    String? lastPostId,
  });
  Future<List<ComicPost?>> getUserComicFeed({
    required String? userId,
    String? lastPostId,
  });
  void createTextLike({required TextPost post, required String? userId});
  void createComicLike({required ComicPost post, required String? userId});
  void createReWriteLike({required ReImagined post, required String? userId});
  Future<Set<String>> getTextLikedPostIds({
    required String? userId,
    required List<TextPost?> posts,
  });
  Future<Set<String>> getComicLikedPostIds({
    required String? userId,
    required List<ComicPost?> posts,
  });
  Future<Set<String>> getReWriteLikedPostIds({
    required String? userId,
    required List<ReImagined?> posts,
  });
  void deleteTextLiked({required String postId, required String? userId});
  void deleteComicLiked({required String postId, required String? userId});
  void deleteReWriteLiked({required String postId, required String? userId});
  Future<void> createPostCategory({required PostCategory category});
  Future<void> savePosts(SavedPost savedPost);
  Stream<List<Future<SavedPost?>>> getSavedPosts({required String userId});
}
