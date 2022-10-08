part of 'liked_post_cubit.dart';

@freezed
class LikedPostState with _$LikedPostState {
  const factory LikedPostState({
    required Set<String> likedTextPostIds,
    required Set<String> recentlyLikedTextPostIds,
    required Set<String> likedComicPostIds,
    required Set<String> recentlyLikedComicPostIds,
  }) = _LikedPostState;
  factory LikedPostState.initial() => const _LikedPostState(
        likedComicPostIds: {},
        likedTextPostIds: {},
        recentlyLikedComicPostIds: {},
        recentlyLikedTextPostIds: {},
      );
}
