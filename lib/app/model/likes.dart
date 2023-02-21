import 'package:freezed_annotation/freezed_annotation.dart';

part 'likes.freezed.dart';
part 'likes.g.dart';

@freezed
class Likes with _$Likes {
  const factory Likes({
    String? id,
    required String postId,
    @JsonKey(name: 'created_at') DateTime? date,
  }) = _Likes;

  factory Likes.fromJson(Map<String, dynamic> json) => _$LikesFromJson(json);
}
