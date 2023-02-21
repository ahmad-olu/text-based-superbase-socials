import 'package:freezed_annotation/freezed_annotation.dart';
part 'comment.g.dart';
part 'comment.freezed.dart';

@freezed
class Comment with _$Comment {
  const Comment._();
  const factory Comment({
    String? id,
    @JsonKey(name: 'author_id') String? authorId,
    @JsonKey(name: 'author_username') String? authorUsername,
    @JsonKey(name: 'author_profile_image_url') String? authorProfileImageURL,
    required String postId,
    //required PostType postType,
    //todo!! post type
    required String content,
    @JsonKey(name: 'created_at') DateTime? date,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
