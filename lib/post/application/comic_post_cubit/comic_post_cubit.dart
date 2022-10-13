import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/domain/geat_failure.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/infrastructure/storage_repository.dart';
import 'package:geat/post/domain/post_model.dart';
import 'package:geat/post/infrastructure/post_repository.dart';

part 'comic_post_state.dart';
part 'comic_post_cubit.freezed.dart';

class ComicPostCubit extends Cubit<ComicPostState> {
  final PostRepository _postRepository;
  final AuthBloc _authBloc;
  final StorageRepository _storageRepository;
  ComicPostCubit(this._postRepository, this._authBloc, this._storageRepository)
      : super(ComicPostState.initial());

  void postImageChanged(List<File?>? file) {
    emit(
      state.copyWith(
        postImages: file,
        status: ComicPostStatus.initial,
      ),
    );
  }

  void titleChanged(String title) {
    emit(state.copyWith(title: title, status: ComicPostStatus.initial));
  }

  void categoryChanged(List<String> category) {
    emit(state.copyWith(category: category, status: ComicPostStatus.initial));
  }

  void extrasContentChanged(String subTitle) {
    emit(state.copyWith(subTitle: subTitle, status: ComicPostStatus.initial));
  }

  Future<void> submit() async {
    emit(state.copyWith(status: ComicPostStatus.submitting));
    List<String> postImageUrls = [];
    try {
      final author =
          await _postRepository.getUser(userId: _authBloc.state.user!.uid);
      if (state.postImages != null) {
        postImageUrls = await _storageRepository.uploadComicPostImage(
          images: state.postImages,
        );
      } else if (state.postImages == null) {
        throw NoImageSelectedException();
      }

      final post = Post(
        author: author,
        imageUrls: postImageUrls,
        title: state.title,
        subTitle: state.subTitle,
        content: null,
        likes: 0,
        canReImagine: false,
        postType: PostType.comicPost,
        category: state.category,
        dateCreated: FieldValue.serverTimestamp(),
      );
      await _postRepository.createPost(post: post);
      emit(state.copyWith(status: ComicPostStatus.submitted));
    } on Exception catch (e) {
      emit(
        state.copyWith(
          status: ComicPostStatus.error,
          failure: e,
        ),
      );
    }
  }

  void reset() {
    emit(ComicPostState.initial());
  }
}
