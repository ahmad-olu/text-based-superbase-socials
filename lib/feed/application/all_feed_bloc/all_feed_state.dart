part of 'all_feed_bloc.dart';

enum AllFeedStatus { initial, loading, loaded, error }

@freezed
class AllFeedState with _$AllFeedState {
  const factory AllFeedState({
    required List<Post?> post,
    required AllFeedStatus status,
    required Exception? failure,
  }) = _AllFeedState;
  factory AllFeedState.initial() => const _AllFeedState(
        post: [],
        failure: null,
        status: AllFeedStatus.initial,
      );
}
