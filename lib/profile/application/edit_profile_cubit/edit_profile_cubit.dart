import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/core/domain/bio.dart';
import 'package:geat/core/domain/geat_failure.dart';
import 'package:geat/core/domain/website.dart';
import 'package:geat/core/infrastructure/storage_repository.dart';
import 'package:geat/profile/application/profile_bloc/profile_bloc.dart';
import 'package:geat/profile/infrastructure/user_repository.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  final ProfileBloc _profileBloc;
  final UserRepository _userRepository;
  final StorageRepository _storageRepository;
  EditProfileCubit(
      this._profileBloc, this._userRepository, this._storageRepository)
      : super(EditProfileState.initial()) {
    final user = _profileBloc.state.user;
    final bio = user.bio ?? '';
    final fullName = user.fullName ?? '';
    final website = user.website ?? '';
    emit(
      state.copyWith(
        bio: bio,
        website: website,
        fullname: fullName,
      ),
    );
  }
  void profileImageChanged(File? image) {
    emit(
      state.copyWith(profileImage: image, status: EditProfileStatus.initial),
    );
  }

  void fullNameChanged(String fullNameStr) {
    emit(
      state.copyWith(
        fullname: fullNameStr,
        status: EditProfileStatus.initial,
      ),
    );
  }

  void bioChanged(String bioStr) {
    emit(
      state.copyWith(
        bio: bioStr,
        status: EditProfileStatus.initial,
      ),
    );
  }

  void websiteChanged(String websiteStr) {
    emit(
      state.copyWith(
        website: websiteStr,
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
        profileImageUrl = await _storageRepository.uploadProfileImage(
          url: profileImageUrl,
          image: state.profileImage,
        );
      }
      final updatedUser = user.copyWith(
        bio: state.bio,
        website: state.website,
        profileImageUrl: profileImageUrl,
        fullName: state.fullname,
      );
      await _userRepository.updateUser(user: updatedUser);
      _profileBloc.add(ProfileEvent.loadUser(user.id));
      emit(state.copyWith(status: EditProfileStatus.success));
    } on Exception catch (e) {
      emit(
        state.copyWith(
          status: EditProfileStatus.error,
          failure: e,
        ),
      );
    }
  }
}
