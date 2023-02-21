import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback.freezed.dart';
part 'feedback.g.dart';

@freezed
class FeedBack with _$FeedBack {
  const factory FeedBack({
    String? id,
    @JsonKey(name: 'author_id') String? authorId,
    @JsonKey(name: 'author_username') String? authorUsername,
    @JsonKey(name: 'author_email') String? authorEmail,
    @JsonKey(name: 'image_url') required String imageURL,
    required String content,
    @JsonKey(name: 'created_at') DateTime? date,
  }) = _FeedBack;

  factory FeedBack.fromJson(Map<String, dynamic> json) =>
      _$FeedBackFromJson(json);
}
