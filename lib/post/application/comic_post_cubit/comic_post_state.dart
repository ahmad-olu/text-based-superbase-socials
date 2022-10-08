part of 'comic_post_cubit.dart';

enum ComicPostStatus { initial, submitting, submitted, error }

@freezed
class ComicPostState with _$ComicPostState {
  const factory ComicPostState({
    required List<File?>? postImages,
    required String title,
    required String subTitle,
    required ComicPostStatus status,
    required List<String> category,
    required Exception? failure,
  }) = _ComicPostState;
  factory ComicPostState.initial() => const _ComicPostState(
        postImages: null,
        title: '',
        subTitle: '',
        category: [],
        status: ComicPostStatus.initial,
        failure: null,
      );
}
