import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/helper/firabse_user_refrence_helper.dart';
import 'package:geat/core/helper/firebase_time_stamp_helper.dart';
import 'package:geat/profile/domain/user_model.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class Post with _$Post {
  const Post._();
  const factory Post({
    String? id,
    @JsonKey(
      toJson: fireStoreUserToJson,
    )
        required dynamic author,
    required String title,
    required String? subTitle,
    required List<String>? imageUrls,
    required bool canReImagine,
    required String? content,
    required PostType postType,
    required List<String>? category,
    required int likes,
    @JsonKey(
      toJson: fireStoreTimestampToJson,
      fromJson: fireStoreTimestampFromJson,
    )
        required dynamic dateCreated,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  static Future<Post?> fromFireStore(DocumentSnapshot? doc) async {
    if (doc == null) return null;
    final data = doc.data()! as Map<String, dynamic>;
    final authorRef = data['author'] as DocumentReference;
    final authorDoc = await authorRef.get();
    return Post.fromJson(data)
        .copyWith(id: doc.id, author: User.fromFireStore(authorDoc));
  }
}
