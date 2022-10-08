import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/helper/firabse_user_refrence_helper.dart';
import 'package:geat/core/helper/firebase_time_stamp_helper.dart';
import 'package:geat/profile/domain/user_model.dart';
part 'comic_post_model.freezed.dart';
part 'comic_post_model.g.dart';

@freezed
class ComicPost with _$ComicPost {
  const ComicPost._();
  const factory ComicPost({
    String? id,
    @JsonKey(
      toJson: fireStoreUserToJson,
    )
        required dynamic author,
    required String title,
    required String? subTitle,
    required List<String> imageUrls,
    required bool canReImagine,
    required PostType? postType,
    required List<String>? category,
    required int likes,
    @JsonKey(
      toJson: fireStoreTimestampToJson,
      fromJson: fireStoreTimestampFromJson,
    )
        required dynamic dateCreated,
  }) = _ComicPost;

  factory ComicPost.fromJson(Map<String, dynamic> json) =>
      _$ComicPostFromJson(json);

  static Future<ComicPost?> fromFireStore(DocumentSnapshot? doc) async {
    if (doc == null) return null;
    final data = doc.data()! as Map<String, dynamic>;
    final authorRef = data['author'] as DocumentReference;
    final authorDoc = await authorRef.get();
    return ComicPost.fromJson(data)
        .copyWith(id: doc.id, author: User.fromFireStore(authorDoc));
  }
}
