part of 'picture_post_cubit.dart';

enum CreatePicturePostStatus { initial, submitting, submitted, error }

@freezed
class CreatePicturePostState with _$CreatePicturePostState {
  const factory CreatePicturePostState({
    required List<File?>? postImages,
    required String title,
    required CreatePicturePostStatus status,
    required GeatFailure failure,
  }) = _CreatePicturePostState;
  factory CreatePicturePostState.initial() => const _CreatePicturePostState(
        postImages: null,
        title: '',
        status: CreatePicturePostStatus.initial,
        failure: GeatFailure(),
      );
}
