import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/helper/firabse_user_refrence_helper.dart';
import 'package:geat/core/helper/firebase_refrence_helper_for_notification.dart';
import 'package:geat/post/domain/post_model.dart';
import 'package:geat/profile/domain/user_model.dart';
part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class PostCategory with _$PostCategory {
  const PostCategory._();
  const factory PostCategory({
    String? id,
    required String category,
    @JsonKey(
      toJson: fireStorePostToJson,
    )
        dynamic post,
    required PostType postType,
    @JsonKey(
      toJson: fireStoreUserToJson,
    )
        required dynamic author,
  }) = _PostCategory;

  factory PostCategory.fromJson(Map<String, dynamic> json) =>
      _$PostCategoryFromJson(json);
  static Future<PostCategory?> fromFireStore(DocumentSnapshot? doc) async {
    if (doc == null) return null;
    final data = doc.data()! as Map<String, dynamic>;
    final fromUserRef = data['author'] as DocumentReference;
    final fromUserDoc = await fromUserRef.get();
    final fromPostRef = data['post'] as DocumentReference?;
    final fromPostDoc = await fromPostRef?.get();
    return PostCategory.fromJson(data).copyWith(
      id: doc.id,
      author: User.fromFireStore(fromUserDoc),
      post: await Post.fromFireStore(fromPostDoc),
    );
  }
}
