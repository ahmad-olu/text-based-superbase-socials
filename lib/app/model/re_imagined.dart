import 'package:freezed_annotation/freezed_annotation.dart';

part 're_imagined.freezed.dart';
part 're_imagined.g.dart';

@freezed
class ReImagined with _$ReImagined {
  const factory ReImagined({
    String? id,
    @JsonKey(name: 'author_id') String? authorId,
    @JsonKey(name: 'author_username') String? authorUsername,
    @JsonKey(name: 'author_profile_image_url') String? authorProfileImageURL,
    required String postId,
    //required PostType postType,
    //todo!! post type
    required String content,
    @JsonKey(name: 'created_at') DateTime? date,
  }) = _ReImagined;

  factory ReImagined.fromJson(Map<String, dynamic> json) =>
      _$ReImaginedFromJson(json);
}
