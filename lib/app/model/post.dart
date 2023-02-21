import 'package:freezed_annotation/freezed_annotation.dart';
//import 'package:geat/core/enum/enum.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const Post._();
  const factory Post({
    String? id,
    @JsonKey(name: 'author_id') String? authorId,
    @JsonKey(name: 'author_username') String? authorUsername,
    @JsonKey(name: 'author_profile_image_url') String? authorProfileImageUrl,
    required String title,
    @JsonKey(name: 'sub_title') String? subTitle,
    required bool publish,
    @JsonKey(name: 'can_re_imagine') required bool canReImagine,
    @JsonKey(name: 'can_comment') required bool canComment,
    @JsonKey(name: 'images_url') required List<String>? imagesURL,
    required String? content,
    //required PostType postType,
    //Todo!!: handle post type and categories
    //required List<String>? category,
    @JsonKey(name: 'created_at') required DateTime dateCreated,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
