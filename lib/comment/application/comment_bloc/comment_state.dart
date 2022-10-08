part of 'comment_bloc.dart';

enum CommentStatus { initial, loading, loaded, submitting, error }

@freezed
class CommentState with _$CommentState {
  const factory CommentState({
    required TextPost? textPost,
    required ComicPost? comicPost,
    required List<Comment> comment,
    required CommentStatus status,
    required Exception? failure,
  }) = _CommentsState;
  factory CommentState.initial() => const _CommentsState(
        textPost: null,
        comicPost: null,
        comment: [],
        status: CommentStatus.initial,
        failure: null,
      );
}
