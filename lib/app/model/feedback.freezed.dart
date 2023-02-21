// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedBack _$FeedBackFromJson(Map<String, dynamic> json) {
  return _FeedBack.fromJson(json);
}

/// @nodoc
mixin _$FeedBack {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_id')
  String? get authorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_username')
  String? get authorUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_email')
  String? get authorEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageURL => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedBackCopyWith<FeedBack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedBackCopyWith<$Res> {
  factory $FeedBackCopyWith(FeedBack value, $Res Function(FeedBack) then) =
      _$FeedBackCopyWithImpl<$Res, FeedBack>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'author_id') String? authorId,
      @JsonKey(name: 'author_username') String? authorUsername,
      @JsonKey(name: 'author_email') String? authorEmail,
      @JsonKey(name: 'image_url') String imageURL,
      String content,
      @JsonKey(name: 'created_at') DateTime? date});
}

/// @nodoc
class _$FeedBackCopyWithImpl<$Res, $Val extends FeedBack>
    implements $FeedBackCopyWith<$Res> {
  _$FeedBackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? authorUsername = freezed,
    Object? authorEmail = freezed,
    Object? imageURL = null,
    Object? content = null,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
      authorUsername: freezed == authorUsername
          ? _value.authorUsername
          : authorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      authorEmail: freezed == authorEmail
          ? _value.authorEmail
          : authorEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeedBackCopyWith<$Res> implements $FeedBackCopyWith<$Res> {
  factory _$$_FeedBackCopyWith(
          _$_FeedBack value, $Res Function(_$_FeedBack) then) =
      __$$_FeedBackCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'author_id') String? authorId,
      @JsonKey(name: 'author_username') String? authorUsername,
      @JsonKey(name: 'author_email') String? authorEmail,
      @JsonKey(name: 'image_url') String imageURL,
      String content,
      @JsonKey(name: 'created_at') DateTime? date});
}

/// @nodoc
class __$$_FeedBackCopyWithImpl<$Res>
    extends _$FeedBackCopyWithImpl<$Res, _$_FeedBack>
    implements _$$_FeedBackCopyWith<$Res> {
  __$$_FeedBackCopyWithImpl(
      _$_FeedBack _value, $Res Function(_$_FeedBack) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? authorUsername = freezed,
    Object? authorEmail = freezed,
    Object? imageURL = null,
    Object? content = null,
    Object? date = freezed,
  }) {
    return _then(_$_FeedBack(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
      authorUsername: freezed == authorUsername
          ? _value.authorUsername
          : authorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      authorEmail: freezed == authorEmail
          ? _value.authorEmail
          : authorEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedBack implements _FeedBack {
  const _$_FeedBack(
      {this.id,
      @JsonKey(name: 'author_id') this.authorId,
      @JsonKey(name: 'author_username') this.authorUsername,
      @JsonKey(name: 'author_email') this.authorEmail,
      @JsonKey(name: 'image_url') required this.imageURL,
      required this.content,
      @JsonKey(name: 'created_at') this.date});

  factory _$_FeedBack.fromJson(Map<String, dynamic> json) =>
      _$$_FeedBackFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'author_id')
  final String? authorId;
  @override
  @JsonKey(name: 'author_username')
  final String? authorUsername;
  @override
  @JsonKey(name: 'author_email')
  final String? authorEmail;
  @override
  @JsonKey(name: 'image_url')
  final String imageURL;
  @override
  final String content;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? date;

  @override
  String toString() {
    return 'FeedBack(id: $id, authorId: $authorId, authorUsername: $authorUsername, authorEmail: $authorEmail, imageURL: $imageURL, content: $content, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedBack &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.authorUsername, authorUsername) ||
                other.authorUsername == authorUsername) &&
            (identical(other.authorEmail, authorEmail) ||
                other.authorEmail == authorEmail) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, authorId, authorUsername,
      authorEmail, imageURL, content, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedBackCopyWith<_$_FeedBack> get copyWith =>
      __$$_FeedBackCopyWithImpl<_$_FeedBack>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedBackToJson(
      this,
    );
  }
}

abstract class _FeedBack implements FeedBack {
  const factory _FeedBack(
      {final String? id,
      @JsonKey(name: 'author_id') final String? authorId,
      @JsonKey(name: 'author_username') final String? authorUsername,
      @JsonKey(name: 'author_email') final String? authorEmail,
      @JsonKey(name: 'image_url') required final String imageURL,
      required final String content,
      @JsonKey(name: 'created_at') final DateTime? date}) = _$_FeedBack;

  factory _FeedBack.fromJson(Map<String, dynamic> json) = _$_FeedBack.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'author_id')
  String? get authorId;
  @override
  @JsonKey(name: 'author_username')
  String? get authorUsername;
  @override
  @JsonKey(name: 'author_email')
  String? get authorEmail;
  @override
  @JsonKey(name: 'image_url')
  String get imageURL;
  @override
  String get content;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$_FeedBackCopyWith<_$_FeedBack> get copyWith =>
      throw _privateConstructorUsedError;
}
