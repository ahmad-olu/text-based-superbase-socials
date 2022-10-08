import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geat/comment/domain/comment_model.dart';
import 'package:geat/core/constants/paths.dart';
import 'package:geat/core/domain/geat_failure.dart';
import 'package:geat/core/domain/model/category_model.dart';
import 'package:geat/core/domain/model/saved_post_model.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/notification/domain/notification_model.dart';
import 'package:geat/post/domain/comic_post_model.dart';
import 'package:geat/post/domain/i_post_repository.dart';
import 'package:geat/post/domain/text_post_model.dart';
import 'package:geat/profile/domain/user_model.dart';
import 'package:geat/reImagined/domain/reImagied_model.dart';

class PostRepository implements IPostRepository {
  final FirebaseFirestore _firebaseFirestore;

  PostRepository(this._firebaseFirestore);
  @override
  Future<void> createTextPost({required TextPost textPost}) async {
    try {
      await _firebaseFirestore
          .collection(Paths.textPosts)
          .add(textPost.toJson());
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
  Future<void> createComicPost({required ComicPost comicPost}) async {
    try {
      await _firebaseFirestore
          .collection(Paths.comicPosts)
          .add(comicPost.toJson());
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
  Future<void> createTextComments({
    required TextPost textPost,
    required Comment comment,
  }) async {
    final author = textPost.author as User;
    try {
      await _firebaseFirestore
          .collection(Paths.comments)
          .doc(comment.postId)
          .collection(Paths.textPostComments)
          .add(comment.toJson());

      final notification = Notification(
        type: NotifType.comment,
        fromUser: comment.author,
        textPost: textPost,
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
  Future<void> createComicComments({
    required ComicPost comicPost,
    required Comment comment,
  }) async {
    final author = comicPost.author as User;
    try {
      await _firebaseFirestore
          .collection(Paths.comments)
          .doc(comment.postId)
          .collection(Paths.comicPostComments)
          .add(comment.toJson());
      final notification = Notification(
        type: NotifType.comment,
        fromUser: comment.author,
        comicPost: comicPost,
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
  Future<void> createTextReImagined(
      {required TextPost textPost, required ReImagined reImagined}) async {
    //final author = reImagined.author as User;
    try {
      await _firebaseFirestore
          .collection(Paths.reImagined)
          .doc(reImagined.postId)
          .collection(Paths.textPostReImagined)
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
  void createComicLike({required ComicPost post, required String? userId}) {
    final author = post.author as User;
    try {
      _firebaseFirestore
          .collection(Paths.comicPosts)
          .doc(post.id)
          .update({'likes': FieldValue.increment(1)});

      _firebaseFirestore
          .collection(Paths.likes)
          .doc(post.id)
          .collection(Paths.comicPostLikes)
          .doc(userId)
          .set({});
      final notification = Notification(
        type: NotifType.like,
        fromUser: User.empty.copyWith(id: userId!),
        comicPost: post,
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
  void createReWriteLike({required ReImagined post, required String? userId}) {
    final author = post.author as User;
    try {
      _firebaseFirestore
          .collection(Paths.reImagined)
          .doc(post.id)
          .update({'likes': FieldValue.increment(1)});

      _firebaseFirestore
          .collection(Paths.likes)
          .doc(post.id)
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
  void createTextLike({required TextPost post, required String? userId}) {
    final author = post.author as User;
    try {
      _firebaseFirestore
          .collection(Paths.textPosts)
          .doc(post.id)
          .update({'likes': FieldValue.increment(1)});

      _firebaseFirestore
          .collection(Paths.likes)
          .doc(post.id)
          .collection(Paths.textPostLikes)
          .doc(userId)
          .set({});

      final notification = Notification(
        type: NotifType.like,
        fromUser: User.empty.copyWith(id: userId!),
        textPost: post,
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
  Stream<List<Future<TextPost?>>> getUserTextPost({required String userId}) {
    try {
      final authorRef = _firebaseFirestore.collection(Paths.users).doc(userId);
      return _firebaseFirestore
          .collection(Paths.textPosts)
          .where('author', isEqualTo: authorRef)
          .orderBy('dateCreated', descending: true)
          .snapshots()
          .map(
            (snap) =>
                snap.docs.map((doc) => TextPost.fromFireStore(doc)).toList(),
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
  Stream<List<Future<ComicPost?>>> getUserComicPost({required String userId}) {
    try {
      final authorRef = _firebaseFirestore.collection(Paths.users).doc(userId);
      return _firebaseFirestore
          .collection(Paths.comicPosts)
          .where('author', isEqualTo: authorRef)
          .orderBy('dateCreated', descending: true)
          .snapshots()
          .map(
            (snap) =>
                snap.docs.map((doc) => ComicPost.fromFireStore(doc)).toList(),
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
  Stream<List<Future<Comment>>> getTextPostComment({required String postId}) {
    try {
      return _firebaseFirestore
          .collection(Paths.comments)
          .doc(postId)
          .collection(Paths.textPostComments)
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
  Stream<List<Future<Comment>>> getComicPostComment({required String postId}) {
    try {
      return _firebaseFirestore
          .collection(Paths.comments)
          .doc(postId)
          .collection(Paths.comicPostComments)
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
  Stream<List<Future<ReImagined?>>> getTextPostReWrite({
    required String postId,
  }) {
    try {
      return _firebaseFirestore
          .collection(Paths.reImagined)
          .doc(postId)
          .collection(Paths.textPostReImagined)
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
  Future<List<TextPost?>> getUserTextFeed({
    required String? userId,
    String? lastPostId,
  }) async {
    try {
      QuerySnapshot postsSnap;
      if (lastPostId == null) {
        postsSnap = await _firebaseFirestore
            .collection(Paths.feeds)
            .doc(userId)
            .collection(Paths.userTextFeed)
            .orderBy('dateCreated', descending: true)
            .limit(3)
            .get();
      } else {
        final lastPostDoc = await _firebaseFirestore
            .collection(Paths.feeds)
            .doc(userId)
            .collection(Paths.userTextFeed)
            .doc(lastPostId)
            .get();

        if (!lastPostDoc.exists) {
          return [];
        }

        postsSnap = await _firebaseFirestore
            .collection(Paths.feeds)
            .doc(userId)
            .collection(Paths.userTextFeed)
            .orderBy('dateCreated', descending: true)
            .startAfterDocument(lastPostDoc)
            .limit(3)
            .get();
      }

      final posts = Future.wait(
        postsSnap.docs.map((docs) async {
          final doc = docs as QueryDocumentSnapshot<Map<String, dynamic>>;
          return TextPost.fromFireStore(doc);
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
  Future<List<ComicPost?>> getUserComicFeed({
    required String? userId,
    String? lastPostId,
  }) async {
    try {
      QuerySnapshot postsSnap;
      if (lastPostId == null) {
        postsSnap = await _firebaseFirestore
            .collection(Paths.feeds)
            .doc(userId)
            .collection(Paths.userComicFeed)
            .orderBy('dateCreated', descending: true)
            .limit(3)
            .get();
      } else {
        final lastPostDoc = await _firebaseFirestore
            .collection(Paths.feeds)
            .doc(userId)
            .collection(Paths.userComicFeed)
            .doc(lastPostId)
            .get();

        if (!lastPostDoc.exists) {
          return [];
        }

        postsSnap = await _firebaseFirestore
            .collection(Paths.feeds)
            .doc(userId)
            .collection(Paths.userComicFeed)
            .orderBy('dateCreated', descending: true)
            .startAfterDocument(lastPostDoc)
            .limit(3)
            .get();
      }

      final posts = Future.wait(
        postsSnap.docs.map((docs) async {
          final doc = docs as QueryDocumentSnapshot<Map<String, dynamic>>;
          return ComicPost.fromFireStore(doc);
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
  Future<Set<String>> getTextLikedPostIds({
    required String? userId,
    required List<TextPost?> posts,
  }) async {
    try {
      final postIds = <String>{};
      for (final post in posts) {
        final likeDoc = await _firebaseFirestore
            .collection(Paths.likes)
            .doc(post!.id)
            .collection(Paths.textPostLikes)
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
  Future<Set<String>> getComicLikedPostIds({
    required String? userId,
    required List<ComicPost?> posts,
  }) async {
    try {
      final postIds = <String>{};
      for (final post in posts) {
        final likeDoc = await _firebaseFirestore
            .collection(Paths.likes)
            .doc(post!.id)
            .collection(Paths.comicPostLikes)
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
  Future<Set<String>> getReWriteLikedPostIds({
    required String? userId,
    required List<ReImagined?> posts,
  }) async {
    try {
      final postIds = <String>{};
      for (final post in posts) {
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
  void deleteTextLiked({required String postId, required String? userId}) {
    try {
      _firebaseFirestore
          .collection(Paths.textPosts)
          .doc(postId)
          .update({'likes': FieldValue.increment(-1)});

      _firebaseFirestore
          .collection(Paths.likes)
          .doc(postId)
          .collection(Paths.textPostLikes)
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
  void deleteComicLiked({required String postId, required String? userId}) {
    try {
      _firebaseFirestore
          .collection(Paths.comicPosts)
          .doc(postId)
          .update({'likes': FieldValue.increment(-1)});

      _firebaseFirestore
          .collection(Paths.likes)
          .doc(postId)
          .collection(Paths.comicPostLikes)
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
  void deleteReWriteLiked({required String postId, required String? userId}) {
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
  Stream<List<Future<TextPost?>>> getAllTextPost() {
    try {
      return _firebaseFirestore
          .collection(Paths.textPosts)
          .orderBy('dateCreated', descending: true)
          .snapshots()
          .map(
            (snap) =>
                snap.docs.map((doc) => TextPost.fromFireStore(doc)).toList(),
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
  Stream<List<Future<ComicPost?>>> getAllComicPost() {
    try {
      return _firebaseFirestore
          .collection(Paths.comicPosts)
          .orderBy('dateCreated', descending: true)
          .snapshots()
          .map(
            (snap) =>
                snap.docs.map((doc) => ComicPost.fromFireStore(doc)).toList(),
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
