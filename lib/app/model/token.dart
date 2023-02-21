import 'package:freezed_annotation/freezed_annotation.dart';
part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class Token with _$Token {
  const factory Token({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'token_type') required String tokenType,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}
