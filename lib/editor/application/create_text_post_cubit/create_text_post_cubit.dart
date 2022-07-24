import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/core/core.dart';
import 'package:geat/core/core.dart';
import 'package:geat/editor/editor.dart';
import 'package:geat/post/domain/i_post_repository.dart';
import 'package:geat/profile/profile.dart';
import 'package:injectable/injectable.dart';

part 'create_text_post_state.dart';
part 'create_text_post_cubit.freezed.dart';

@injectable
class CreateTextPostCubit extends Cubit<CreateTextPostState> {
  final IPostRepository _iPostRepository;
  final AuthBloc _authBloc;
  CreateTextPostCubit(this._iPostRepository, this._authBloc)
      : super(CreateTextPostState.initial());

  void postImageChanged(File file) {
    emit(state.copyWith(postImage: file, status: CreateTextPostStatus.initial));
  }

  void titleChanged(String title) {
    emit(state.copyWith(title: title, status: CreateTextPostStatus.initial));
  }

  void contentChanged(String contents) {
    emit(
      state.copyWith(
        contents: contents,
        status: CreateTextPostStatus.initial,
      ),
    );
  }

  Future<void> submit() async {
    emit(state.copyWith(status: CreateTextPostStatus.submitting));
    try {
      final author = User.empty.copyWith(id: _authBloc.state.user);
      final postImageUrl =
          await _iPostRepository.uploadTextPostImage(image: state.postImage);
      final post = TextPost(
        author: author,
        imageUrl: postImageUrl,
        title: state.title,
        content: state.contents,
        likes: 0,
        tags: [],
        date: DateTime.now(),
        //todo* change the datetime to aws currenttime
      );
      await _iPostRepository.createTextPost(textPost: post);
      emit(state.copyWith(status: CreateTextPostStatus.submitted));
    } catch (e) {
      emit(
        state.copyWith(
          status: CreateTextPostStatus.error,
          failure: const GeatFailure(),
        ),
      );
    }
  }

  void reset() {
    emit(state.copyWith(status: CreateTextPostStatus.initial));
  }
}
