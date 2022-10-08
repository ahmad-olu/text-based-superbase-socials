import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/helper/firabse_user_refrence_helper.dart';
import 'package:geat/core/helper/firebase_time_stamp_helper.dart';
import 'package:geat/profile/domain/user_model.dart';
part 'comment_model.g.dart';
part 'comment_model.freezed.dart';

@freezed
class Comment with _$Comment {
  const Comment._();
  const factory Comment({
    String? id,
    required String postId,
    @JsonKey(
      toJson: fireStoreUserToJson,
    )
        required dynamic author,
    required PostType postType,
    required String content,
    @JsonKey(
      toJson: fireStoreTimestampToJson,
      fromJson: fireStoreTimestampFromJson,
    )
        required dynamic date,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
  static Future<Comment> fromFireStore(DocumentSnapshot doc) async {
    final data = doc.data()! as Map<String, dynamic>;
    final authorRef = data['author'] as DocumentReference;
    final authorDoc = await authorRef.get();
    return Comment.fromJson(data)
        .copyWith(id: doc.id, author: User.fromFireStore(authorDoc));
  }
}
