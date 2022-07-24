part of 'edit_profile_cubit.dart';

enum EditProfileStatus { initial, submitting, success, error }

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    required File? profileImage,
    required Bio bio,
    required Website website,
    required EditProfileStatus status,
    required GeatFailure failure,
  }) = _EditProfileState;
  factory EditProfileState.initial() => const EditProfileState(
        bio: Bio.pure(),
        profileImage: null,
        website: Website.pure(),
        status: EditProfileStatus.initial,
        failure: GeatFailure(),
      );
}
