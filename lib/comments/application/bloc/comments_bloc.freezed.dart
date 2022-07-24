// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextPost post) fetchTextComments,
    required TResult Function(PicturePost post) fetchPictureComments,
    required TResult Function(List<Comments> comment) updateComments,
    required TResult Function(String content) postComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TextPost post)? fetchTextComments,
    TResult Function(PicturePost post)? fetchPictureComments,
    TResult Function(List<Comments> comment)? updateComments,
    TResult Function(String content)? postComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextPost post)? fetchTextComments,
    TResult Function(PicturePost post)? fetchPictureComments,
    TResult Function(List<Comments> comment)? updateComments,
    TResult Function(String content)? postComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTextComments value) fetchTextComments,
    required TResult Function(_FetchPictureComments value) fetchPictureComments,
    required TResult Function(_UpdateComments value) updateComments,
    required TResult Function(_PostComments value) postComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchTextComments,
    TResult Function(_FetchPictureComments value)? fetchPictureComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostComments value)? postComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchTextComments,
    TResult Function(_FetchPictureComments value)? fetchPictureComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostComments value)? postComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsEventCopyWith<$Res> {
  factory $CommentsEventCopyWith(
          CommentsEvent value, $Res Function(CommentsEvent) then) =
      _$CommentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentsEventCopyWithImpl<$Res>
    implements $CommentsEventCopyWith<$Res> {
  _$CommentsEventCopyWithImpl(this._value, this._then);

  final CommentsEvent _value;
  // ignore: unused_field
  final $Res Function(CommentsEvent) _then;
}

/// @nodoc
abstract class _$$_FetchTextCommentsCopyWith<$Res> {
  factory _$$_FetchTextCommentsCopyWith(_$_FetchTextComments value,
          $Res Function(_$_FetchTextComments) then) =
      __$$_FetchTextCommentsCopyWithImpl<$Res>;
  $Res call({TextPost post});
}

/// @nodoc
class __$$_FetchTextCommentsCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res>
    implements _$$_FetchTextCommentsCopyWith<$Res> {
  __$$_FetchTextCommentsCopyWithImpl(
      _$_FetchTextComments _value, $Res Function(_$_FetchTextComments) _then)
      : super(_value, (v) => _then(v as _$_FetchTextComments));

  @override
  _$_FetchTextComments get _value => super._value as _$_FetchTextComments;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_$_FetchTextComments(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as TextPost,
    ));
  }
}

/// @nodoc

class _$_FetchTextComments implements _FetchTextComments {
  const _$_FetchTextComments({required this.post});

  @override
  final TextPost post;

  @override
  String toString() {
    return 'CommentsEvent.fetchTextComments(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchTextComments &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  _$$_FetchTextCommentsCopyWith<_$_FetchTextComments> get copyWith =>
      __$$_FetchTextCommentsCopyWithImpl<_$_FetchTextComments>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextPost post) fetchTextComments,
    required TResult Function(PicturePost post) fetchPictureComments,
    required TResult Function(List<Comments> comment) updateComments,
    required TResult Function(String content) postComments,
  }) {
    return fetchTextComments(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TextPost post)? fetchTextComments,
    TResult Function(PicturePost post)? fetchPictureComments,
    TResult Function(List<Comments> comment)? updateComments,
    TResult Function(String content)? postComments,
  }) {
    return fetchTextComments?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextPost post)? fetchTextComments,
    TResult Function(PicturePost post)? fetchPictureComments,
    TResult Function(List<Comments> comment)? updateComments,
    TResult Function(String content)? postComments,
    required TResult orElse(),
  }) {
    if (fetchTextComments != null) {
      return fetchTextComments(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTextComments value) fetchTextComments,
    required TResult Function(_FetchPictureComments value) fetchPictureComments,
    required TResult Function(_UpdateComments value) updateComments,
    required TResult Function(_PostComments value) postComments,
  }) {
    return fetchTextComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchTextComments,
    TResult Function(_FetchPictureComments value)? fetchPictureComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostComments value)? postComments,
  }) {
    return fetchTextComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchTextComments,
    TResult Function(_FetchPictureComments value)? fetchPictureComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostComments value)? postComments,
    required TResult orElse(),
  }) {
    if (fetchTextComments != null) {
      return fetchTextComments(this);
    }
    return orElse();
  }
}

abstract class _FetchTextComments implements CommentsEvent {
  const factory _FetchTextComments({required final TextPost post}) =
      _$_FetchTextComments;

  TextPost get post => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FetchTextCommentsCopyWith<_$_FetchTextComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchPictureCommentsCopyWith<$Res> {
  factory _$$_FetchPictureCommentsCopyWith(_$_FetchPictureComments value,
          $Res Function(_$_FetchPictureComments) then) =
      __$$_FetchPictureCommentsCopyWithImpl<$Res>;
  $Res call({PicturePost post});
}

/// @nodoc
class __$$_FetchPictureCommentsCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res>
    implements _$$_FetchPictureCommentsCopyWith<$Res> {
  __$$_FetchPictureCommentsCopyWithImpl(_$_FetchPictureComments _value,
      $Res Function(_$_FetchPictureComments) _then)
      : super(_value, (v) => _then(v as _$_FetchPictureComments));

  @override
  _$_FetchPictureComments get _value => super._value as _$_FetchPictureComments;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_$_FetchPictureComments(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PicturePost,
    ));
  }
}

/// @nodoc

class _$_FetchPictureComments implements _FetchPictureComments {
  const _$_FetchPictureComments({required this.post});

  @override
  final PicturePost post;

  @override
  String toString() {
    return 'CommentsEvent.fetchPictureComments(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchPictureComments &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  _$$_FetchPictureCommentsCopyWith<_$_FetchPictureComments> get copyWith =>
      __$$_FetchPictureCommentsCopyWithImpl<_$_FetchPictureComments>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextPost post) fetchTextComments,
    required TResult Function(PicturePost post) fetchPictureComments,
    required TResult Function(List<Comments> comment) updateComments,
    required TResult Function(String content) postComments,
  }) {
    return fetchPictureComments(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TextPost post)? fetchTextComments,
    TResult Function(PicturePost post)? fetchPictureComments,
    TResult Function(List<Comments> comment)? updateComments,
    TResult Function(String content)? postComments,
  }) {
    return fetchPictureComments?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextPost post)? fetchTextComments,
    TResult Function(PicturePost post)? fetchPictureComments,
    TResult Function(List<Comments> comment)? updateComments,
    TResult Function(String content)? postComments,
    required TResult orElse(),
  }) {
    if (fetchPictureComments != null) {
      return fetchPictureComments(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTextComments value) fetchTextComments,
    required TResult Function(_FetchPictureComments value) fetchPictureComments,
    required TResult Function(_UpdateComments value) updateComments,
    required TResult Function(_PostComments value) postComments,
  }) {
    return fetchPictureComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchTextComments,
    TResult Function(_FetchPictureComments value)? fetchPictureComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostComments value)? postComments,
  }) {
    return fetchPictureComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchTextComments,
    TResult Function(_FetchPictureComments value)? fetchPictureComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostComments value)? postComments,
    required TResult orElse(),
  }) {
    if (fetchPictureComments != null) {
      return fetchPictureComments(this);
    }
    return orElse();
  }
}

abstract class _FetchPictureComments implements CommentsEvent {
  const factory _FetchPictureComments({required final PicturePost post}) =
      _$_FetchPictureComments;

  PicturePost get post => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FetchPictureCommentsCopyWith<_$_FetchPictureComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCommentsCopyWith<$Res> {
  factory _$$_UpdateCommentsCopyWith(
          _$_UpdateComments value, $Res Function(_$_UpdateComments) then) =
      __$$_UpdateCommentsCopyWithImpl<$Res>;
  $Res call({List<Comments> comment});
}

/// @nodoc
class __$$_UpdateCommentsCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res>
    implements _$$_UpdateCommentsCopyWith<$Res> {
  __$$_UpdateCommentsCopyWithImpl(
      _$_UpdateComments _value, $Res Function(_$_UpdateComments) _then)
      : super(_value, (v) => _then(v as _$_UpdateComments));

  @override
  _$_UpdateComments get _value => super._value as _$_UpdateComments;

  @override
  $Res call({
    Object? comment = freezed,
  }) {
    return _then(_$_UpdateComments(
      comment: comment == freezed
          ? _value._comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<Comments>,
    ));
  }
}

/// @nodoc

class _$_UpdateComments implements _UpdateComments {
  const _$_UpdateComments({required final List<Comments> comment})
      : _comment = comment;

  final List<Comments> _comment;
  @override
  List<Comments> get comment {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comment);
  }

  @override
  String toString() {
    return 'CommentsEvent.updateComments(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateComments &&
            const DeepCollectionEquality().equals(other._comment, _comment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comment));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateCommentsCopyWith<_$_UpdateComments> get copyWith =>
      __$$_UpdateCommentsCopyWithImpl<_$_UpdateComments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextPost post) fetchTextComments,
    required TResult Function(PicturePost post) fetchPictureComments,
    required TResult Function(List<Comments> comment) updateComments,
    required TResult Function(String content) postComments,
  }) {
    return updateComments(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TextPost post)? fetchTextComments,
    TResult Function(PicturePost post)? fetchPictureComments,
    TResult Function(List<Comments> comment)? updateComments,
    TResult Function(String content)? postComments,
  }) {
    return updateComments?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextPost post)? fetchTextComments,
    TResult Function(PicturePost post)? fetchPictureComments,
    TResult Function(List<Comments> comment)? updateComments,
    TResult Function(String content)? postComments,
    required TResult orElse(),
  }) {
    if (updateComments != null) {
      return updateComments(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTextComments value) fetchTextComments,
    required TResult Function(_FetchPictureComments value) fetchPictureComments,
    required TResult Function(_UpdateComments value) updateComments,
    required TResult Function(_PostComments value) postComments,
  }) {
    return updateComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchTextComments,
    TResult Function(_FetchPictureComments value)? fetchPictureComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostComments value)? postComments,
  }) {
    return updateComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchTextComments,
    TResult Function(_FetchPictureComments value)? fetchPictureComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostComments value)? postComments,
    required TResult orElse(),
  }) {
    if (updateComments != null) {
      return updateComments(this);
    }
    return orElse();
  }
}

abstract class _UpdateComments implements CommentsEvent {
  const factory _UpdateComments({required final List<Comments> comment}) =
      _$_UpdateComments;

  List<Comments> get comment => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateCommentsCopyWith<_$_UpdateComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostCommentsCopyWith<$Res> {
  factory _$$_PostCommentsCopyWith(
          _$_PostComments value, $Res Function(_$_PostComments) then) =
      __$$_PostCommentsCopyWithImpl<$Res>;
  $Res call({String content});
}

/// @nodoc
class __$$_PostCommentsCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res>
    implements _$$_PostCommentsCopyWith<$Res> {
  __$$_PostCommentsCopyWithImpl(
      _$_PostComments _value, $Res Function(_$_PostComments) _then)
      : super(_value, (v) => _then(v as _$_PostComments));

  @override
  _$_PostComments get _value => super._value as _$_PostComments;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_$_PostComments(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostComments implements _PostComments {
  const _$_PostComments({required this.content});

  @override
  final String content;

  @override
  String toString() {
    return 'CommentsEvent.postComments(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostComments &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_PostCommentsCopyWith<_$_PostComments> get copyWith =>
      __$$_PostCommentsCopyWithImpl<_$_PostComments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextPost post) fetchTextComments,
    required TResult Function(PicturePost post) fetchPictureComments,
    required TResult Function(List<Comments> comment) updateComments,
    required TResult Function(String content) postComments,
  }) {
    return postComments(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TextPost post)? fetchTextComments,
    TResult Function(PicturePost post)? fetchPictureComments,
    TResult Function(List<Comments> comment)? updateComments,
    TResult Function(String content)? postComments,
  }) {
    return postComments?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextPost post)? fetchTextComments,
    TResult Function(PicturePost post)? fetchPictureComments,
    TResult Function(List<Comments> comment)? updateComments,
    TResult Function(String content)? postComments,
    required TResult orElse(),
  }) {
    if (postComments != null) {
      return postComments(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTextComments value) fetchTextComments,
    required TResult Function(_FetchPictureComments value) fetchPictureComments,
    required TResult Function(_UpdateComments value) updateComments,
    required TResult Function(_PostComments value) postComments,
  }) {
    return postComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchTextComments,
    TResult Function(_FetchPictureComments value)? fetchPictureComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostComments value)? postComments,
  }) {
    return postComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchTextComments,
    TResult Function(_FetchPictureComments value)? fetchPictureComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostComments value)? postComments,
    required TResult orElse(),
  }) {
    if (postComments != null) {
      return postComments(this);
    }
    return orElse();
  }
}

abstract class _PostComments implements CommentsEvent {
  const factory _PostComments({required final String content}) =
      _$_PostComments;

  String get content => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PostCommentsCopyWith<_$_PostComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentsState {
  TextPost? get textPost => throw _privateConstructorUsedError;
  PicturePost? get picturePost => throw _privateConstructorUsedError;
  List<Comments> get comment => throw _privateConstructorUsedError;
  CommentStatus get status => throw _privateConstructorUsedError;
  GeatFailure get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentsStateCopyWith<CommentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsStateCopyWith<$Res> {
  factory $CommentsStateCopyWith(
          CommentsState value, $Res Function(CommentsState) then) =
      _$CommentsStateCopyWithImpl<$Res>;
  $Res call(
      {TextPost? textPost,
      PicturePost? picturePost,
      List<Comments> comment,
      CommentStatus status,
      GeatFailure failure});

  $GeatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$CommentsStateCopyWithImpl<$Res>
    implements $CommentsStateCopyWith<$Res> {
  _$CommentsStateCopyWithImpl(this._value, this._then);

  final CommentsState _value;
  // ignore: unused_field
  final $Res Function(CommentsState) _then;

  @override
  $Res call({
    Object? textPost = freezed,
    Object? picturePost = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      textPost: textPost == freezed
          ? _value.textPost
          : textPost // ignore: cast_nullable_to_non_nullable
              as TextPost?,
      picturePost: picturePost == freezed
          ? _value.picturePost
          : picturePost // ignore: cast_nullable_to_non_nullable
              as PicturePost?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<Comments>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GeatFailure,
    ));
  }

  @override
  $GeatFailureCopyWith<$Res> get failure {
    return $GeatFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$$_CommentsStateCopyWith<$Res>
    implements $CommentsStateCopyWith<$Res> {
  factory _$$_CommentsStateCopyWith(
          _$_CommentsState value, $Res Function(_$_CommentsState) then) =
      __$$_CommentsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextPost? textPost,
      PicturePost? picturePost,
      List<Comments> comment,
      CommentStatus status,
      GeatFailure failure});

  @override
  $GeatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_CommentsStateCopyWithImpl<$Res>
    extends _$CommentsStateCopyWithImpl<$Res>
    implements _$$_CommentsStateCopyWith<$Res> {
  __$$_CommentsStateCopyWithImpl(
      _$_CommentsState _value, $Res Function(_$_CommentsState) _then)
      : super(_value, (v) => _then(v as _$_CommentsState));

  @override
  _$_CommentsState get _value => super._value as _$_CommentsState;

  @override
  $Res call({
    Object? textPost = freezed,
    Object? picturePost = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_CommentsState(
      textPost: textPost == freezed
          ? _value.textPost
          : textPost // ignore: cast_nullable_to_non_nullable
              as TextPost?,
      picturePost: picturePost == freezed
          ? _value.picturePost
          : picturePost // ignore: cast_nullable_to_non_nullable
              as PicturePost?,
      comment: comment == freezed
          ? _value._comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<Comments>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GeatFailure,
    ));
  }
}

/// @nodoc

class _$_CommentsState implements _CommentsState {
  const _$_CommentsState(
      {required this.textPost,
      required this.picturePost,
      required final List<Comments> comment,
      required this.status,
      required this.failure})
      : _comment = comment;

  @override
  final TextPost? textPost;
  @override
  final PicturePost? picturePost;
  final List<Comments> _comment;
  @override
  List<Comments> get comment {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comment);
  }

  @override
  final CommentStatus status;
  @override
  final GeatFailure failure;

  @override
  String toString() {
    return 'CommentsState(textPost: $textPost, picturePost: $picturePost, comment: $comment, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentsState &&
            const DeepCollectionEquality().equals(other.textPost, textPost) &&
            const DeepCollectionEquality()
                .equals(other.picturePost, picturePost) &&
            const DeepCollectionEquality().equals(other._comment, _comment) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(textPost),
      const DeepCollectionEquality().hash(picturePost),
      const DeepCollectionEquality().hash(_comment),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_CommentsStateCopyWith<_$_CommentsState> get copyWith =>
      __$$_CommentsStateCopyWithImpl<_$_CommentsState>(this, _$identity);
}

abstract class _CommentsState implements CommentsState {
  const factory _CommentsState(
      {required final TextPost? textPost,
      required final PicturePost? picturePost,
      required final List<Comments> comment,
      required final CommentStatus status,
      required final GeatFailure failure}) = _$_CommentsState;

  @override
  TextPost? get textPost => throw _privateConstructorUsedError;
  @override
  PicturePost? get picturePost => throw _privateConstructorUsedError;
  @override
  List<Comments> get comment => throw _privateConstructorUsedError;
  @override
  CommentStatus get status => throw _privateConstructorUsedError;
  @override
  GeatFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CommentsStateCopyWith<_$_CommentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
