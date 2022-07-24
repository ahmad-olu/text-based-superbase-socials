import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/core/core.dart';
import 'package:geat/core/core.dart';
import 'package:geat/post/domain/i_post_repository.dart';
import 'package:geat/post/domain/model.dart';
import 'package:geat/profile/profile.dart';
import 'package:injectable/injectable.dart';

part 'picture_post_state.dart';
part 'picture_post_cubit.freezed.dart';

@injectable
class CreatePicturePostCubit extends Cubit<CreatePicturePostState> {
  final IPostRepository _iPostRepository;
  final AuthBloc _authBloc;
  CreatePicturePostCubit(this._iPostRepository, this._authBloc)
      : super(CreatePicturePostState.initial());

  void postImageChanged(List<File?>? file) {
    emit(
      state.copyWith(
        postImages: file,
        status: CreatePicturePostStatus.initial,
      ),
    );
  }

  void titleChanged(String title) {
    emit(state.copyWith(title: title, status: CreatePicturePostStatus.initial));
  }

  Future<void> submit() async {
    emit(state.copyWith(status: CreatePicturePostStatus.submitting));
    try {
      final author = User.empty.copyWith(id: _authBloc.state.user);
      final postImageUrl = await _iPostRepository.uploadPicturePostImage(
        images: state.postImages,
      );
      final post = PicturePost(
        author: author,
        imagesUrl: postImageUrl,
        title: state.title,
        likes: 0,
        tags: [],
        date: DateTime.now(),
        //todo* change the datetime to aws currenttime
      );
      await _iPostRepository.createPicturePost(picturePost: post);
      emit(state.copyWith(status: CreatePicturePostStatus.submitted));
    } catch (e) {
      emit(
        state.copyWith(
          status: CreatePicturePostStatus.error,
          failure: const GeatFailure(),
        ),
      );
    }
  }

  void reset() {
    emit(CreatePicturePostState.initial());
  }
}
