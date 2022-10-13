import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:geat/core/domain/geat_failure.dart';
import 'package:geat/core/domain/i_storage_repository.dart';
import 'package:uuid/uuid.dart';

class StorageRepository implements IStorageRepository {
  final FirebaseStorage _firebaseStorage;

  StorageRepository(this._firebaseStorage);
  Future<String> _uploadImage({
    required File image,
    required String ref,
  }) async {
    try {
      final downloadUrl = await _firebaseStorage
          .ref(ref)
          .putFile(image)
          .then((taskSnapshot) => taskSnapshot.ref.getDownloadURL());
      return downloadUrl;
    } on FirebaseException catch (e) {
      if (e.code.contains('unauthorized')) {
        throw InsufficientPermissionException();
      } else if (e.code.contains('canceled')) {
        throw UserCancelledException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }

  @override
  Future<String> uploadProfileImage({
    required String? url,
    required File? image,
  }) async {
    var imageId = const Uuid().v4();

    // Update user profile image.
    if (url != null) {
      if (url.isNotEmpty) {
        final exp = RegExp(r'userProfile_(.*).jpg');
        imageId = exp.firstMatch(url)![1]!;
      }
    }

    final downloadUrl = await _uploadImage(
      image: image!,
      ref: 'images/users/userProfile_$imageId.jpg',
    );
    return downloadUrl;
  }

  @override
  Future<List<String>> uploadTextPostImage({required File? image}) async {
    final List<String> imageUrl = [];
    final imageId = const Uuid().v4();
    if (image != null) {
      final downloadUrl = await _uploadImage(
        image: image,
        ref: 'images/post/post_$imageId.jpg',
      );
      imageUrl.add(downloadUrl);
    }

    return imageUrl;
  }

  @override
  Future<List<String>> uploadComicPostImage({
    required List<File?>? images,
  }) async {
    final List<String> eachImageUrl = [];

    if (images != null) {
      for (final image in images) {
        final imageId = const Uuid().v4();
        final downloadUrl = await _uploadImage(
          image: image!,
          ref: 'images/post/post_$imageId.jpg',
        );
        eachImageUrl.add(downloadUrl);
      }
    }
    return eachImageUrl;
  }
}
