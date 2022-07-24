import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/core/core.dart';
import 'package:geat/core/core.dart';
import 'package:geat/editor/editor.dart';
import 'package:geat/post/domain/i_post_repository.dart';
import 'package:geat/profile/profile.dart';
import 'package:injectable/injectable.dart';

part 'create_rewrite_post_state.dart';
part 'create_rewrite_post_cubit.freezed.dart';

@injectable
class CreateRewritePostCubit extends Cubit<CreateRewritePostState> {
  final IPostRepository _iPostRepository;
  final AuthBloc _authBloc;
  CreateRewritePostCubit(this._iPostRepository, this._authBloc)
      : super(CreateRewritePostState.initial());

  void contentChanged(String contents) {
    emit(
      state.copyWith(
        contents: contents,
        status: CreateRewritePostStatus.initial,
      ),
    );
  }

  Future<void> submit() async {
    emit(state.copyWith(status: CreateRewritePostStatus.submitting));
    try {
      final author = User.empty.copyWith(id: _authBloc.state.user);
      final post = Rewrite(
        author: author,
        content: state.contents,
        postid: '', //todo!! add post id

        likes: 0,
        date: DateTime.now(), //todo* change the datetime to aws currenttime
      );
      await _iPostRepository.createReWrite(rewrite: post);
      emit(state.copyWith(status: CreateRewritePostStatus.submitted));
    } catch (e) {
      emit(
        state.copyWith(
          status: CreateRewritePostStatus.error,
          failure: const GeatFailure(),
        ),
      );
    }
  }

  void reset() {
    emit(state.copyWith(status: CreateRewritePostStatus.initial));
  }
}
