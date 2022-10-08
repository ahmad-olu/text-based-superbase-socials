part of 'text_post_cubit.dart';

enum TextPostStatus { initial, submitting, submitted, error }

@freezed
class TextPostState with _$TextPostState {
  const factory TextPostState({
    required File? postImage,
    required String title,
    required String contents,
    required TextPostStatus status,
    required Exception? failure,
  }) = _TextPostState;
  factory TextPostState.initial() => const _TextPostState(
        postImage: null,
        title: '',
        contents: '',
        status: TextPostStatus.initial,
        failure: null,
      );
}
