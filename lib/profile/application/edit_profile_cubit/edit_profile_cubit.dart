import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/core/core.dart';
import 'package:geat/core/core.dart';
import 'package:geat/profile/profile.dart';
import 'package:injectable/injectable.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

@injectable
class EditProfileCubit extends Cubit<EditProfileState> {
  final IUserRepository _iUserRepository;
  final ProfileBloc _profileBloc;
  EditProfileCubit(this._iUserRepository, this._profileBloc)
      : super(EditProfileState.initial()) {
    final user = _profileBloc.state.user;
    emit(
      state.copyWith(
        bio: Bio.dirty(user.bio),
        website: Website.dirty(user.website),
      ),
    );
  }
  void profileImageChanged(File? image) {
    emit(
      state.copyWith(profileImage: image, status: EditProfileStatus.initial),
    );
  }

  void bioChanged(String bioStr) {
    final bio = Bio.dirty(bioStr);
    emit(
      state.copyWith(
        bio: bio.valid ? bio : Bio.pure(bioStr),
        status: EditProfileStatus.initial,
      ),
    );
  }

  void websiteChanged(String websiteStr) {
    final website = Website.dirty(websiteStr);
    emit(
      state.copyWith(
        website: website.valid ? website : Website.pure(websiteStr),
        status: EditProfileStatus.initial,
      ),
    );
  }

  Future<void> submit() async {
    emit(state.copyWith(status: EditProfileStatus.submitting));
    try {
      final user = _profileBloc.state.user;
      var profileImageUrl = user.profileImageUrl;
      if (state.profileImage != null) {
        profileImageUrl = await _iUserRepository.uploadProfileImage(
          url: profileImageUrl,
          image: state.profileImage,
        );
      }
      final updatedUser = user.copyWith(
        bio: state.bio.value,
        website: state.website.value,
        profileImageUrl: profileImageUrl,
      );
      await _iUserRepository.updateUser(user: updatedUser);
      _profileBloc.add(ProfileEvent.loadUser(user.id));
      emit(state.copyWith(status: EditProfileStatus.success));
    } catch (e) {
      emit(
        state.copyWith(
          status: EditProfileStatus.error,
          failure: const GeatFailure(),
        ),
      );
    }
  }
}
