part of 'create_rewrite_post_cubit.dart';

enum CreateRewritePostStatus { initial, submitting, submitted, error }

@freezed
class CreateRewritePostState with _$CreateRewritePostState {
  const factory CreateRewritePostState({
    required String contents,
    required CreateRewritePostStatus status,
    required GeatFailure failure,
  }) = _CreateRewritePostState;
  factory CreateRewritePostState.initial() => const _CreateRewritePostState(
        contents: '',
        status: CreateRewritePostStatus.initial,
        failure: GeatFailure(),
      );
}
