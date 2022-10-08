part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.loadUser(String userId) = _LoadUser;
  const factory ProfileEvent.updateTextPost(List<TextPost?> textPost) =
      _UpdateTextPost;
  const factory ProfileEvent.updateComicPost(
    List<ComicPost?> comicPost,
  ) = _UpdatePicturePost;
  const factory ProfileEvent.updateSavedPosts(
    List<SavedPost?> savedPosts,
  ) = _UpdateSavedPosts;
  const factory ProfileEvent.followUser() = _FollowUser;
  const factory ProfileEvent.unFollowUser() = _UnFollowUser;
}
