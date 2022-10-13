// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) fetchComments,
    required TResult Function(List<Comment> comment) updateComments,
    required TResult Function(String content) postComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? fetchComments,
    TResult Function(List<Comment> comment)? updateComments,
    TResult Function(String content)? postComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? fetchComments,
    TResult Function(List<Comment> comment)? updateComments,
    TResult Function(String content)? postComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTextComments value) fetchComments,
    required TResult Function(_UpdateComments value) updateComments,
    required TResult Function(_PostTextComments value) postComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostTextComments value)? postComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostTextComments value)? postComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEventCopyWith<$Res> {
  factory $CommentEventCopyWith(
          CommentEvent value, $Res Function(CommentEvent) then) =
      _$CommentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentEventCopyWithImpl<$Res> implements $CommentEventCopyWith<$Res> {
  _$CommentEventCopyWithImpl(this._value, this._then);

  final CommentEvent _value;
  // ignore: unused_field
  final $Res Function(CommentEvent) _then;
}

/// @nodoc
abstract class _$$_FetchTextCommentsCopyWith<$Res> {
  factory _$$_FetchTextCommentsCopyWith(_$_FetchTextComments value,
          $Res Function(_$_FetchTextComments) then) =
      __$$_FetchTextCommentsCopyWithImpl<$Res>;
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$_FetchTextCommentsCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res>
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
              as Post,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$_FetchTextComments implements _FetchTextComments {
  const _$_FetchTextComments({required this.post});

  @override
  final Post post;

  @override
  String toString() {
    return 'CommentEvent.fetchComments(post: $post)';
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
    required TResult Function(Post post) fetchComments,
    required TResult Function(List<Comment> comment) updateComments,
    required TResult Function(String content) postComments,
  }) {
    return fetchComments(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? fetchComments,
    TResult Function(List<Comment> comment)? updateComments,
    TResult Function(String content)? postComments,
  }) {
    return fetchComments?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? fetchComments,
    TResult Function(List<Comment> comment)? updateComments,
    TResult Function(String content)? postComments,
    required TResult orElse(),
  }) {
    if (fetchComments != null) {
      return fetchComments(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTextComments value) fetchComments,
    required TResult Function(_UpdateComments value) updateComments,
    required TResult Function(_PostTextComments value) postComments,
  }) {
    return fetchComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostTextComments value)? postComments,
  }) {
    return fetchComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostTextComments value)? postComments,
    required TResult orElse(),
  }) {
    if (fetchComments != null) {
      return fetchComments(this);
    }
    return orElse();
  }
}

abstract class _FetchTextComments implements CommentEvent {
  const factory _FetchTextComments({required final Post post}) =
      _$_FetchTextComments;

  Post get post;
  @JsonKey(ignore: true)
  _$$_FetchTextCommentsCopyWith<_$_FetchTextComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCommentsCopyWith<$Res> {
  factory _$$_UpdateCommentsCopyWith(
          _$_UpdateComments value, $Res Function(_$_UpdateComments) then) =
      __$$_UpdateCommentsCopyWithImpl<$Res>;
  $Res call({List<Comment> comment});
}

/// @nodoc
class __$$_UpdateCommentsCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res>
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
              as List<Comment>,
    ));
  }
}

/// @nodoc

class _$_UpdateComments implements _UpdateComments {
  const _$_UpdateComments({required final List<Comment> comment})
      : _comment = comment;

  final List<Comment> _comment;
  @override
  List<Comment> get comment {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comment);
  }

  @override
  String toString() {
    return 'CommentEvent.updateComments(comment: $comment)';
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
    required TResult Function(Post post) fetchComments,
    required TResult Function(List<Comment> comment) updateComments,
    required TResult Function(String content) postComments,
  }) {
    return updateComments(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? fetchComments,
    TResult Function(List<Comment> comment)? updateComments,
    TResult Function(String content)? postComments,
  }) {
    return updateComments?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? fetchComments,
    TResult Function(List<Comment> comment)? updateComments,
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
    required TResult Function(_FetchTextComments value) fetchComments,
    required TResult Function(_UpdateComments value) updateComments,
    required TResult Function(_PostTextComments value) postComments,
  }) {
    return updateComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostTextComments value)? postComments,
  }) {
    return updateComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostTextComments value)? postComments,
    required TResult orElse(),
  }) {
    if (updateComments != null) {
      return updateComments(this);
    }
    return orElse();
  }
}

abstract class _UpdateComments implements CommentEvent {
  const factory _UpdateComments({required final List<Comment> comment}) =
      _$_UpdateComments;

  List<Comment> get comment;
  @JsonKey(ignore: true)
  _$$_UpdateCommentsCopyWith<_$_UpdateComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostTextCommentsCopyWith<$Res> {
  factory _$$_PostTextCommentsCopyWith(
          _$_PostTextComments value, $Res Function(_$_PostTextComments) then) =
      __$$_PostTextCommentsCopyWithImpl<$Res>;
  $Res call({String content});
}

/// @nodoc
class __$$_PostTextCommentsCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res>
    implements _$$_PostTextCommentsCopyWith<$Res> {
  __$$_PostTextCommentsCopyWithImpl(
      _$_PostTextComments _value, $Res Function(_$_PostTextComments) _then)
      : super(_value, (v) => _then(v as _$_PostTextComments));

  @override
  _$_PostTextComments get _value => super._value as _$_PostTextComments;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_$_PostTextComments(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostTextComments implements _PostTextComments {
  const _$_PostTextComments({required this.content});

  @override
  final String content;

  @override
  String toString() {
    return 'CommentEvent.postComments(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostTextComments &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_PostTextCommentsCopyWith<_$_PostTextComments> get copyWith =>
      __$$_PostTextCommentsCopyWithImpl<_$_PostTextComments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) fetchComments,
    required TResult Function(List<Comment> comment) updateComments,
    required TResult Function(String content) postComments,
  }) {
    return postComments(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? fetchComments,
    TResult Function(List<Comment> comment)? updateComments,
    TResult Function(String content)? postComments,
  }) {
    return postComments?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? fetchComments,
    TResult Function(List<Comment> comment)? updateComments,
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
    required TResult Function(_FetchTextComments value) fetchComments,
    required TResult Function(_UpdateComments value) updateComments,
    required TResult Function(_PostTextComments value) postComments,
  }) {
    return postComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostTextComments value)? postComments,
  }) {
    return postComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTextComments value)? fetchComments,
    TResult Function(_UpdateComments value)? updateComments,
    TResult Function(_PostTextComments value)? postComments,
    required TResult orElse(),
  }) {
    if (postComments != null) {
      return postComments(this);
    }
    return orElse();
  }
}

abstract class _PostTextComments implements CommentEvent {
  const factory _PostTextComments({required final String content}) =
      _$_PostTextComments;

  String get content;
  @JsonKey(ignore: true)
  _$$_PostTextCommentsCopyWith<_$_PostTextComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentState {
  Post? get post => throw _privateConstructorUsedError;
  List<Comment> get comment => throw _privateConstructorUsedError;
  CommentStatus get status => throw _privateConstructorUsedError;
  Exception? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentStateCopyWith<CommentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentStateCopyWith<$Res> {
  factory $CommentStateCopyWith(
          CommentState value, $Res Function(CommentState) then) =
      _$CommentStateCopyWithImpl<$Res>;
  $Res call(
      {Post? post,
      List<Comment> comment,
      CommentStatus status,
      Exception? failure});

  $PostCopyWith<$Res>? get post;
}

/// @nodoc
class _$CommentStateCopyWithImpl<$Res> implements $CommentStateCopyWith<$Res> {
  _$CommentStateCopyWithImpl(this._value, this._then);

  final CommentState _value;
  // ignore: unused_field
  final $Res Function(CommentState) _then;

  @override
  $Res call({
    Object? post = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }

  @override
  $PostCopyWith<$Res>? get post {
    if (_value.post == null) {
      return null;
    }

    return $PostCopyWith<$Res>(_value.post!, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc
abstract class _$$_CommentsStateCopyWith<$Res>
    implements $CommentStateCopyWith<$Res> {
  factory _$$_CommentsStateCopyWith(
          _$_CommentsState value, $Res Function(_$_CommentsState) then) =
      __$$_CommentsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Post? post,
      List<Comment> comment,
      CommentStatus status,
      Exception? failure});

  @override
  $PostCopyWith<$Res>? get post;
}

/// @nodoc
class __$$_CommentsStateCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res>
    implements _$$_CommentsStateCopyWith<$Res> {
  __$$_CommentsStateCopyWithImpl(
      _$_CommentsState _value, $Res Function(_$_CommentsState) _then)
      : super(_value, (v) => _then(v as _$_CommentsState));

  @override
  _$_CommentsState get _value => super._value as _$_CommentsState;

  @override
  $Res call({
    Object? post = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_CommentsState(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post?,
      comment: comment == freezed
          ? _value._comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_CommentsState implements _CommentsState {
  const _$_CommentsState(
      {required this.post,
      required final List<Comment> comment,
      required this.status,
      required this.failure})
      : _comment = comment;

  @override
  final Post? post;
  final List<Comment> _comment;
  @override
  List<Comment> get comment {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comment);
  }

  @override
  final CommentStatus status;
  @override
  final Exception? failure;

  @override
  String toString() {
    return 'CommentState(post: $post, comment: $comment, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentsState &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality().equals(other._comment, _comment) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(_comment),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_CommentsStateCopyWith<_$_CommentsState> get copyWith =>
      __$$_CommentsStateCopyWithImpl<_$_CommentsState>(this, _$identity);
}

abstract class _CommentsState implements CommentState {
  const factory _CommentsState(
      {required final Post? post,
      required final List<Comment> comment,
      required final CommentStatus status,
      required final Exception? failure}) = _$_CommentsState;

  @override
  Post? get post;
  @override
  List<Comment> get comment;
  @override
  CommentStatus get status;
  @override
  Exception? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_CommentsStateCopyWith<_$_CommentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
