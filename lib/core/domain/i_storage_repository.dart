import 'dart:io';

abstract class IStorageRepository {
  Future<String> uploadProfileImage({
    required String url,
    required File? image,
  });

  Future<List<String>> uploadTextPostImage({
    required File? image,
  });
  Future<List<String>> uploadComicPostImage({
    required List<File?>? images,
  });
}
