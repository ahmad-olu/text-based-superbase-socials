part of 'comments_bloc.dart';

@freezed
class CommentsEvent with _$CommentsEvent {
  const factory CommentsEvent.fetchTextComments({required TextPost post}) =
      _FetchTextComments;
  const factory CommentsEvent.fetchPictureComments({
    required PicturePost post,
  }) = _FetchPictureComments;
  const factory CommentsEvent.updateComments({
    required List<Comments> comment,
  }) = _UpdateComments;
  const factory CommentsEvent.postComments({required String content}) =
      _PostComments;
}
