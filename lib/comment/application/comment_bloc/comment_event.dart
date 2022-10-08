part of 'comment_bloc.dart';

@freezed
class CommentEvent with _$CommentEvent {
  const factory CommentEvent.fetchTextComments({required TextPost post}) =
      _FetchTextComments;
  const factory CommentEvent.fetchComicComments({
    required ComicPost post,
  }) = _FetchPictureComments;
  const factory CommentEvent.updateComments({
    required List<Comment> comment,
  }) = _UpdateComments;
  const factory CommentEvent.postTextComments({required String content}) =
      _PostTextComments;
  const factory CommentEvent.postComicComments({required String content}) =
      _PostComicComments;
}
