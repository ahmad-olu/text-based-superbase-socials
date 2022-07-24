part of 'comments_bloc.dart';

enum CommentStatus { initial, loading, loaded, submitting, error }

@freezed
class CommentsState with _$CommentsState {
  const factory CommentsState({
    required TextPost? textPost,
    required PicturePost? picturePost,
    required List<Comments> comment,
    required CommentStatus status,
    required GeatFailure failure,
  }) = _CommentsState;
  factory CommentsState.initial() => const _CommentsState(
        textPost: null,
        picturePost: null,
        comment: [],
        status: CommentStatus.initial,
        failure: GeatFailure(),
      );
}
