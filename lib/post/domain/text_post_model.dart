import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/core/domain/model/category_model.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/helper/firabse_user_refrence_helper.dart';
import 'package:geat/core/helper/firebase_time_stamp_helper.dart';
import 'package:geat/profile/domain/user_model.dart';

part 'text_post_model.freezed.dart';
part 'text_post_model.g.dart';

@freezed
class TextPost with _$TextPost {
  const TextPost._();
  const factory TextPost({
    String? id,
    @JsonKey(
      toJson: fireStoreUserToJson,
    )
        required dynamic author,
    required String title,
    required String? subTitle,
    required PostType? postType,
    required String content,
    required String? imageUrl,
    required bool canReImagine,
    required List<String>? category,
    required int likes,
    @JsonKey(
      toJson: fireStoreTimestampToJson,
      fromJson: fireStoreTimestampFromJson,
    )
        required dynamic dateCreated,
  }) = _TextPost;

  factory TextPost.fromJson(Map<String, dynamic> json) =>
      _$TextPostFromJson(json);

  static Future<TextPost?> fromFireStore(DocumentSnapshot? doc) async {
    if (doc == null) return null;
    final data = doc.data()! as Map<String, dynamic>;
    final authorRef = data['author'] as DocumentReference;
    final authorDoc = await authorRef.get();
    return TextPost.fromJson(data)
        .copyWith(id: doc.id, author: User.fromFireStore(authorDoc));
  }
}
