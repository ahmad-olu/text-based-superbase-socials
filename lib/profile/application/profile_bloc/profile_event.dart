part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.loadUser(String userId) = _LoadUser;
  const factory ProfileEvent.updatePost(List<Post?> post) = _UpdatePost;
  const factory ProfileEvent.updateSavedPosts(
    List<SavedPost?> savedPosts,
  ) = _UpdateSavedPosts;
  const factory ProfileEvent.followUser() = _FollowUser;
  const factory ProfileEvent.unFollowUser() = _UnFollowUser;
}
