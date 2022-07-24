part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.loadUser(final String userid) = _LoadUser;
  const factory ProfileEvent.updateTextPost(final List<TextPost> textPost) =
      _UpdateTextPost;
  const factory ProfileEvent.updatePicturePost(
    final List<PicturePost> picturePost,
  ) = _UpdatePicturePost;
  const factory ProfileEvent.followUser() = _FollowUser;
  const factory ProfileEvent.unfollowUser() = _UnfollowUser;
}
