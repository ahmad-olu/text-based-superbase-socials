part of 'edit_profile_cubit.dart';

enum EditProfileStatus { initial, submitting, success, error }

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    required File? profileImage,
    //todo*: create a fullname formz
    required String fullname,
    required String bio,
    required String website,
    required EditProfileStatus status,
    required Exception? failure,
  }) = _EditProfileState;
  factory EditProfileState.initial() => const EditProfileState(
        bio: '',
        fullname: '',
        profileImage: null,
        website: '',
        status: EditProfileStatus.initial,
        failure: null,
      );
}
