import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/comment/domain/comment_model.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/post/domain/comic_post_model.dart';
import 'package:geat/post/domain/text_post_model.dart';
import 'package:geat/post/infrastructure/post_repository.dart';

part 'comment_event.dart';
part 'comment_state.dart';
part 'comment_bloc.freezed.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  final PostRepository _postRepository;
  final AuthBloc _authBloc;
  StreamSubscription<List<Future<Comment>>>? _commentTextSubscription;
  StreamSubscription<List<Future<Comment>>>? _commentComicSubscription;
  CommentBloc(this._postRepository, this._authBloc)
      : super(CommentState.initial()) {
    on<CommentEvent>((event, emit) async {
      await event.map(
        fetchTextComments: (e) async {
          emit(state.copyWith(status: CommentStatus.loading));
          try {
            _commentTextSubscription?.cancel();
            _commentTextSubscription = _postRepository
                .getTextPostComment(postId: e.post.id!)
                .listen((comment) async {
              final allComments = await Future.wait(comment);
              add(CommentEvent.updateComments(comment: allComments));
            });
            emit(
              state.copyWith(textPost: e.post, status: CommentStatus.loaded),
            );
          } on Exception catch (e) {
            emit(
              state.copyWith(
                status: CommentStatus.error,
                failure: e,
              ),
            );
          }
        },
        fetchComicComments: (e) async {
          emit(state.copyWith(status: CommentStatus.loading));
          try {
            _commentComicSubscription?.cancel();
            _commentComicSubscription = _postRepository
                .getComicPostComment(postId: e.post.id!)
                .listen((comment) async {
              final allComments = await Future.wait(comment);
              add(CommentEvent.updateComments(comment: allComments));
            });
            emit(
              state.copyWith(comicPost: e.post, status: CommentStatus.loaded),
            );
          } on Exception catch (e) {
            emit(
              state.copyWith(
                status: CommentStatus.error,
                failure: e,
              ),
            );
          }
        },
        updateComments: (e) async {
          emit(state.copyWith(comment: e.comment));
        },
        postTextComments: (e) async {
          emit(state.copyWith(status: CommentStatus.submitting));
          try {
            final author = await _postRepository.getUser(
              userId: _authBloc.state.user!.uid,
            );

            final comment = Comment(
              postId: state.textPost!.id!,
              author: author,
              postType: PostType.textPost,
              content: e.content,
              date: FieldValue.serverTimestamp(),
            );
            _postRepository.createTextComments(
              textPost: state.textPost!,
              comment: comment,
            );

            emit(state.copyWith(status: CommentStatus.loaded));
          } on Exception catch (e) {
            emit(
              state.copyWith(
                status: CommentStatus.error,
                failure: e,
              ),
            );
          }
        },
        postComicComments: (e) async {
          emit(state.copyWith(status: CommentStatus.submitting));
          try {
            final author = await _postRepository.getUser(
              userId: _authBloc.state.user!.uid,
            );

            final comment = Comment(
              postId: state.comicPost!.id!,
              author: author,
              postType: PostType.comicPost,
              content: e.content,
              date: FieldValue.serverTimestamp(),
            );
            _postRepository.createComicComments(
              comicPost: state.comicPost!,
              comment: comment,
            );

            emit(state.copyWith(status: CommentStatus.loaded));
          } on Exception catch (e) {
            emit(
              state.copyWith(
                status: CommentStatus.error,
                failure: e,
              ),
            );
          }
        },
      );
    });
  }
  @override
  Future<void> close() async {
    _commentTextSubscription?.cancel();
    _commentComicSubscription?.cancel();
    return super.close();
  }
}