part of 'liked_post_cubit.dart';

@freezed
class LikedPostState with _$LikedPostState {
  const factory LikedPostState({
    required Set<String> likedPostIds,
    required Set<String> recentlyLikedPostIds,
  }) = _LikedPostState;
  factory LikedPostState.initial() => const _LikedPostState(
        likedPostIds: {},
        recentlyLikedPostIds: {},
      );
}
