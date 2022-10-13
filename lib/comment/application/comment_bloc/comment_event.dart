part of 'comment_bloc.dart';

@freezed
class CommentEvent with _$CommentEvent {
  const factory CommentEvent.fetchComments({required Post post}) =
      _FetchTextComments;
  const factory CommentEvent.updateComments({
    required List<Comment> comment,
  }) = _UpdateComments;
  const factory CommentEvent.postComments({required String content}) =
      _PostTextComments;
}
