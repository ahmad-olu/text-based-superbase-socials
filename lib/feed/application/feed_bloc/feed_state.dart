part of 'feed_bloc.dart';

enum FeedStatus { initial, loading, loaded, error, paginating }

@freezed
class FeedState with _$FeedState {
  const factory FeedState({
    required List<TextPost?> textPost,
    required List<ComicPost?> picturePost,
    required FeedStatus status,
    required Exception? failure,
  }) = _FeedState;
  factory FeedState.initial() => const _FeedState(
        textPost: [],
        picturePost: [],
        status: FeedStatus.initial,
        failure: null,
      );
}
