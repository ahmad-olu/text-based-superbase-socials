import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/helper/firebase_refrence_helper_for_notification.dart';
import 'package:geat/core/helper/firebase_time_stamp_helper.dart';
import 'package:geat/post/domain/post_model.dart';
part 'saved_post_model.freezed.dart';
part 'saved_post_model.g.dart';

@freezed
class SavedPost with _$SavedPost {
  const SavedPost._();
  const factory SavedPost({
    String? id,
    required String savedOwner,
    required PostType postType,
    @JsonKey(
      toJson: fireStorePostToJson,
    )
        dynamic post,
    @JsonKey(
      toJson: fireStoreTimestampToJson,
      fromJson: fireStoreTimestampFromJson,
    )
        required dynamic dateCreated,
  }) = _SavedPost;

  factory SavedPost.fromJson(Map<String, dynamic> json) =>
      _$SavedPostFromJson(json);

  static Future<SavedPost> fromFireStore(DocumentSnapshot doc) async {
    final data = doc.data()! as Map<String, dynamic>;
    final fromPostRef = data['post'] as DocumentReference?;
    final fromPostDoc = await fromPostRef?.get();
    return SavedPost.fromJson(data).copyWith(
      id: doc.id,
      post: await Post.fromFireStore(fromPostDoc),
    );
  }
}
