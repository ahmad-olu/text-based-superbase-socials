import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/infrastructure/storage_repository.dart';
import 'package:geat/post/domain/post_model.dart';
import 'package:geat/post/infrastructure/post_repository.dart';

part 'text_post_state.dart';
part 'text_post_cubit.freezed.dart';

class TextPostCubit extends Cubit<TextPostState> {
  final PostRepository _postRepository;
  final AuthBloc _authBloc;
  final StorageRepository _storageRepository;
  TextPostCubit(this._postRepository, this._authBloc, this._storageRepository)
      : super(TextPostState.initial());

  void postImageChanged(File? file) {
    emit(state.copyWith(postImage: file, status: TextPostStatus.initial));
  }

  void titleChanged(String title) {
    emit(state.copyWith(title: title, status: TextPostStatus.initial));
  }

  void contentChanged(String contents) {
    emit(
      state.copyWith(
        contents: contents,
        status: TextPostStatus.initial,
      ),
    );
  }

  Future<void> submit() async {
    emit(state.copyWith(status: TextPostStatus.submitting));
    List<String> postImageUrl = [];
    try {
      final author =
          await _postRepository.getUser(userId: _authBloc.state.user!.uid);
      if (state.postImage != null) {
        postImageUrl = await _storageRepository.uploadTextPostImage(
          image: state.postImage,
        );
      }

      final post = Post(
        author: author,
        imageUrls: postImageUrl,
        title: state.title,
        subTitle: '',
        content: state.contents,
        likes: 0,
        canReImagine: false,
        postType: PostType.textPost,
        category: [],
        dateCreated: FieldValue.serverTimestamp(),
      );
      await _postRepository.createPost(post: post);
      emit(state.copyWith(status: TextPostStatus.submitted));
    } on Exception catch (e) {
      emit(
        state.copyWith(
          status: TextPostStatus.error,
          failure: e,
        ),
      );
    }
  }

  void reset() {
    emit(state.copyWith(status: TextPostStatus.initial));
  }
}
