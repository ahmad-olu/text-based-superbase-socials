import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geat/comment/domain/comment_model.dart';
import 'package:geat/core/constants/paths.dart';
import 'package:geat/core/domain/geat_failure.dart';
import 'package:geat/core/domain/model/category_model.dart';
import 'package:geat/core/domain/model/saved_post_model.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/notification/domain/notification_model.dart';
import 'package:geat/post/domain/i_post_repository.dart';
import 'package:geat/post/domain/post_model.dart';
import 'package:geat/profile/domain/user_model.dart';
import 'package:geat/reImagined/domain/reImagied_model.dart';

class PostRepository implements IPostRepository {
  final FirebaseFirestore _firebaseFirestore;

  PostRepository(this._firebaseFirestore);
  @override
  Future<void> createPost({required Post post}) async {
    try {
      await _firebaseFirestore.collection(Paths.posts).add(post.toJson());
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Future<void> createComments({
    required Post post,
    required Comment comment,
  }) async {
    final author = post.author as User;
    try {
      await _firebaseFirestore
          .collection(Paths.comments)
          .doc(comment.postId)
          .collection(Paths.postComments)
          .add(comment.toJson());

      final notification = Notification(
        type: NotifType.comment,
        fromUser: comment.author,
        post: post,
        date: FieldValue.serverTimestamp(),
      );
      _firebaseFirestore
          .collection(Paths.notifications)
          .doc(author.id)
          .collection(Paths.userNotifications)
          .add(notification.toJson());
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Future<void> createReImagined({
    required Post post,
    required ReImagined reImagined,
  }) async {
    //final author = reImagined.author as User;
    try {
      await _firebaseFirestore
          .collection(Paths.reImagined)
          .doc(reImagined.postId)
          .collection(Paths.postReImagined)
          .add(reImagined.toJson());
      // final notification = Notification(
      //   type: NotifType.reImagined,
      //   fromUser: reImagined.author,
      //   textPost: textPost,
      //   date: FieldValue.serverTimestamp(),
      // );
      // _firebaseFirestore
      //     .collection(Paths.notifications)
      //     .doc(author.id)
      //     .collection(Paths.userNotifications)
      //     .add(notification.toJson());
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  void createLike({required Post post, required String? userId}) {
    final author = post.author as User;
    try {
      _firebaseFirestore
          .collection(Paths.posts)
          .doc(post.id)
          .update({'likes': FieldValue.increment(1)});

      _firebaseFirestore
          .collection(Paths.likes)
          .doc(post.id)
          .collection(Paths.postLikes)
          .doc(userId)
          .set({});
      final notification = Notification(
        type: NotifType.like,
        fromUser: User.empty.copyWith(id: userId!),
        post: post,
        date: FieldValue.serverTimestamp(),
      );

      _firebaseFirestore
          .collection(Paths.notifications)
          .doc(author.id)
          .collection(Paths.userNotifications)
          .add(notification.toJson());
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  void createReImaginedLike(
      {required ReImagined reImagined, required String? userId}) {
    final author = reImagined.author as User;
    try {
      _firebaseFirestore
          .collection(Paths.reImagined)
          .doc(reImagined.id)
          .update({'likes': FieldValue.increment(1)});

      _firebaseFirestore
          .collection(Paths.likes)
          .doc(reImagined.id)
          .collection(Paths.reImaginedPostLikes)
          .doc(userId)
          .set({});
      final notification = Notification(
        type: NotifType.like,
        fromUser: User.empty.copyWith(id: userId!),
        // reImagined: post,
        date: FieldValue.serverTimestamp(),
      );

      _firebaseFirestore
          .collection(Paths.notifications)
          .doc(author.id)
          .collection(Paths.userNotifications)
          .add(notification.toJson());
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Stream<List<Future<Post?>>> getUserPost({required String userId}) {
    try {
      final authorRef = _firebaseFirestore.collection(Paths.users).doc(userId);
      return _firebaseFirestore
          .collection(Paths.posts)
          .where('author', isEqualTo: authorRef)
          .orderBy('dateCreated', descending: true)
          .snapshots()
          .map(
            (snap) => snap.docs.map((doc) => Post.fromFireStore(doc)).toList(),
          );
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Stream<List<Future<Comment>>> getPostComment({required String postId}) {
    try {
      return _firebaseFirestore
          .collection(Paths.comments)
          .doc(postId)
          .collection(Paths.postComments)
          .orderBy('date', descending: false)
          .snapshots()
          .map(
            (snap) =>
                snap.docs.map((doc) => Comment.fromFireStore(doc)).toList(),
          );
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Stream<List<Future<ReImagined?>>> getPostReImagined({
    required String postId,
  }) {
    try {
      return _firebaseFirestore
          .collection(Paths.reImagined)
          .doc(postId)
          .collection(Paths.postReImagined)
          .orderBy('date', descending: false)
          .snapshots()
          .map(
            (snap) =>
                snap.docs.map((doc) => ReImagined.fromFireStore(doc)).toList(),
          );
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Future<List<Post?>> getUserFeed({
    required String? userId,
    String? lastPostId,
  }) async {
    try {
      QuerySnapshot postsSnap;
      if (lastPostId == null) {
        postsSnap = await _firebaseFirestore
            .collection(Paths.feeds)
            .doc(userId)
            .collection(Paths.userFeed)
            .orderBy('dateCreated', descending: true)
            .limit(3)
            .get();
      } else {
        final lastPostDoc = await _firebaseFirestore
            .collection(Paths.feeds)
            .doc(userId)
            .collection(Paths.userFeed)
            .doc(lastPostId)
            .get();

        if (!lastPostDoc.exists) {
          return [];
        }

        postsSnap = await _firebaseFirestore
            .collection(Paths.feeds)
            .doc(userId)
            .collection(Paths.userFeed)
            .orderBy('dateCreated', descending: true)
            .startAfterDocument(lastPostDoc)
            .limit(3)
            .get();
      }

      final posts = Future.wait(
        postsSnap.docs.map((docs) async {
          final doc = docs as QueryDocumentSnapshot<Map<String, dynamic>>;
          return Post.fromFireStore(doc);
        }),
      );
      return posts;
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Future<Set<String>> getLikedPostIds({
    required String? userId,
    required List<Post?> posts,
  }) async {
    try {
      final postIds = <String>{};
      for (final post in posts) {
        final likeDoc = await _firebaseFirestore
            .collection(Paths.likes)
            .doc(post!.id)
            .collection(Paths.postLikes)
            .doc(userId)
            .get();
        if (likeDoc.exists) {
          postIds.add(post.id!);
        }
      }
      return postIds;
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Future<Set<String>> getReImaginedLikedPostIds({
    required String? userId,
    required List<ReImagined?> reImagined,
  }) async {
    try {
      final postIds = <String>{};
      for (final post in reImagined) {
        final likeDoc = await _firebaseFirestore
            .collection(Paths.likes)
            .doc(post!.id)
            .collection(Paths.reImaginedPostLikes)
            .doc(userId)
            .get();
        if (likeDoc.exists) {
          postIds.add(post.id!);
        }
      }
      return postIds;
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  void deleteLiked({required String postId, required String? userId}) {
    try {
      _firebaseFirestore
          .collection(Paths.posts)
          .doc(postId)
          .update({'likes': FieldValue.increment(-1)});

      _firebaseFirestore
          .collection(Paths.likes)
          .doc(postId)
          .collection(Paths.postLikes)
          .doc(userId)
          .delete();
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  void deleteReImaginedLiked(
      {required String postId, required String? userId}) {
    try {
      _firebaseFirestore
          .collection(Paths.reImagined)
          .doc(postId)
          .update({'likes': FieldValue.increment(-1)});

      _firebaseFirestore
          .collection(Paths.likes)
          .doc(postId)
          .collection(Paths.reImaginedPostLikes)
          .doc(userId)
          .delete();
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Future<User> getUser({required String userId}) async {
    try {
      final doc =
          await _firebaseFirestore.collection(Paths.users).doc(userId).get();
      return User.fromFireStore(doc);
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Future<void> createPostCategory({required PostCategory category}) async {
    try {
      await _firebaseFirestore
          .collection(Paths.category)
          .add(category.toJson());
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Stream<List<Future<Post?>>> getAllPost() {
    try {
      return _firebaseFirestore
          .collection(Paths.posts)
          .orderBy('dateCreated', descending: true)
          .snapshots()
          .map(
            (snap) => snap.docs.map((doc) => Post.fromFireStore(doc)).toList(),
          );
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Future<void> savePosts(SavedPost savedPost) async {
    try {
      await _firebaseFirestore
          .collection(Paths.savedPost)
          .add(savedPost.toJson());
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Stream<List<Future<SavedPost?>>> getSavedPosts({required String userId}) {
    try {
      return _firebaseFirestore
          .collection(Paths.savedPost)
          .where('savedOwner', isEqualTo: userId)
          .orderBy('dateCreated', descending: true)
          .snapshots()
          .map(
            (snap) =>
                snap.docs.map((doc) => SavedPost.fromFireStore(doc)).toList(),
          );
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('FirebaseNetworkException')) {
        throw NetworkErrorException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }
}
