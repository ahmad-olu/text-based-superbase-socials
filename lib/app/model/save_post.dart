import 'package:freezed_annotation/freezed_annotation.dart';
part 'save_post.freezed.dart';
part 'save_post.g.dart';

@freezed
class SavedPost with _$SavedPost {
  const SavedPost._();
  const factory SavedPost({
    String? id,
    required String savedOwner,
    String? postid,
    required DateTime date,
  }) = _SavedPost;

  factory SavedPost.fromJson(Map<String, dynamic> json) =>
      _$SavedPostFromJson(json);
}
