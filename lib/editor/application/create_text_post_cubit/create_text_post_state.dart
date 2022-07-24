part of 'create_text_post_cubit.dart';

enum CreateTextPostStatus { initial, submitting, submitted, error }

@freezed
class CreateTextPostState with _$CreateTextPostState {
  const factory CreateTextPostState({
    required File postImage,
    required String title,
    required String contents,
    required CreateTextPostStatus status,
    required GeatFailure failure,
  }) = _CreateTextPostState;
  factory CreateTextPostState.initial() => _CreateTextPostState(
        postImage: File(''),
        title: '',
        contents: '',
        status: CreateTextPostStatus.initial,
        failure: const GeatFailure(),
      );
}
