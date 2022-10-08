part of 'all_feed_bloc.dart';

enum AllFeedStatus { initial, loading, loaded, error }

@freezed
class AllFeedState with _$AllFeedState {
  const factory AllFeedState({
    required List<TextPost?> textPost,
    required List<ComicPost?> picturePost,
    required AllFeedStatus status,
    required Exception? failure,
  }) = _AllFeedState;
  factory AllFeedState.initial() => const _AllFeedState(
        textPost: [],
        picturePost: [],
        failure: null,
        status: AllFeedStatus.initial,
      );
}
