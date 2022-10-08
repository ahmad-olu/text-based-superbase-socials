import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/domain/model/saved_post_model.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/post/domain/comic_post_model.dart';
import 'package:geat/post/domain/text_post_model.dart';
import 'package:geat/post/infrastructure/post_repository.dart';

part 'post_actor_event.dart';
part 'post_actor_state.dart';
part 'post_actor_bloc.freezed.dart';

class PostActorBloc extends Bloc<PostActorEvent, PostActorState> {
  final PostRepository _postRepository;
  final AuthBloc _authBloc;
  PostActorBloc(
    this._postRepository,
    this._authBloc,
  ) : super(const PostActorState.initial()) {
    on<PostActorEvent>((event, emit) async {
      await event.map(
        saveTextPost: (e) async {
          emit(const PostActorState.actionInProgress());
          try {
            final post = SavedPost(
              savedOwner: _authBloc.state.user!.uid,
              postType: PostType.textPost,
              textPost: e.post,
              dateCreated: FieldValue.serverTimestamp(),
            );
            await _postRepository.savePosts(post);
            emit(const PostActorState.success());
          } on Exception catch (e) {
            emit(PostActorState.failure(e));
          }
        },
        saveComicPost: (e) async {
          emit(const PostActorState.actionInProgress());
          try {
            final post = SavedPost(
              savedOwner: _authBloc.state.user!.uid,
              postType: PostType.comicPost,
              comicPost: e.post,
              dateCreated: FieldValue.serverTimestamp(),
            );
            await _postRepository.savePosts(post);
            emit(const PostActorState.success());
          } on Exception catch (e) {
            emit(PostActorState.failure(e));
          }
        },
      );
    });
  }
}
