part of 'profile_bloc.dart';

enum ProfileStatus { initial, loading, loaded, error }

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required User user,
    required List<Post?> post,
    //required List<ReImagined?> reWrite,
    required List<SavedPost?> savedPosts,
    //todo: rewrite post for profile state
    required bool isCurrentUser,
    required bool isFollowing,
    required ProfileStatus status,
    required Exception? failure,
  }) = _ProfileState;
  factory ProfileState.initial() => const _ProfileState(
        user: User.empty,
        post: [],
        savedPosts: [],
        //reWrite: [],
        isCurrentUser: false,
        status: ProfileStatus.initial,
        isFollowing: false,
        failure: null,
      );
}
