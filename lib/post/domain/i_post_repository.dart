import 'package:geat/comment/domain/comment_model.dart';
import 'package:geat/core/domain/model/category_model.dart';
import 'package:geat/core/domain/model/saved_post_model.dart';
import 'package:geat/post/domain/post_model.dart';
import 'package:geat/profile/domain/user_model.dart';
import 'package:geat/reImagined/domain/reImagied_model.dart';

abstract class IPostRepository {
  Future<User> getUser({required String userId});
  Future<void> createPost({required Post post});
  Future<void> createReImagined({
    required Post post,
    required ReImagined reImagined,
  });
  Future<void> createComments({
    required Post post,
    required Comment comment,
  });
  Stream<List<Future<Post?>>> getAllPost();
  Stream<List<Future<Post?>>> getUserPost({required String userId});
  Stream<List<Future<ReImagined?>>> getPostReImagined({
    required String postId,
  });
  Stream<List<Future<Comment>>> getPostComment({required String postId});
  Future<List<Post?>> getUserFeed({
    required String? userId,
    String? lastPostId,
  });
  void createLike({required Post post, required String? userId});
  void createReImaginedLike(
      {required ReImagined reImagined, required String? userId});
  Future<Set<String>> getLikedPostIds({
    required String? userId,
    required List<Post?> posts,
  });
  Future<Set<String>> getReImaginedLikedPostIds({
    required String? userId,
    required List<ReImagined?> reImagined,
  });
  void deleteLiked({required String postId, required String? userId});
  void deleteReImaginedLiked({required String postId, required String? userId});
  Future<void> createPostCategory({required PostCategory category});
  Future<void> savePosts(SavedPost savedPost);
  Stream<List<Future<SavedPost?>>> getSavedPosts({required String userId});
}
