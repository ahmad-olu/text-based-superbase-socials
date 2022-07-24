import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/core/core.dart';
import 'package:geat/comments/comments.dart';
import 'package:geat/core/core.dart';
import 'package:geat/editor/editor.dart';
import 'package:geat/post/domain/i_post_repository.dart';
import 'package:geat/post/domain/model.dart';
import 'package:geat/profile/profile.dart';
import 'package:injectable/injectable.dart';

part 'comments_event.dart';
part 'comments_state.dart';
part 'comments_bloc.freezed.dart';

@injectable
class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final IPostRepository _iPostRepository;
  final AuthBloc _authBloc;

  StreamSubscription<List<Future<Comments>>>? _commentSubscription;
  CommentsBloc(this._iPostRepository, this._authBloc)
      : super(CommentsState.initial()) {
    //todo*: The declaration 'close' isn't referenced.Try removing the declaration of 'close'
    @override
    // ignore: unused_element
    Future<void> close() async {
      _commentSubscription?.cancel();
      return super.close();
    }

    on<CommentsEvent>((event, emit) {
      event.map(
        fetchTextComments: (e) async {
          emit(state.copyWith(status: CommentStatus.loading));
          try {
            _commentSubscription?.cancel();
            _commentSubscription = _iPostRepository
                .getPostComment(postId: e.post.id!)
                .listen((comments) async {
              final allComments = await Future.wait(comments);
              add(CommentsEvent.updateComments(comment: allComments));
            });
            emit(
              state.copyWith(textPost: e.post, status: CommentStatus.loaded),
            );
          } catch (e) {
            emit(
              state.copyWith(
                status: CommentStatus.error,
                failure: const GeatFailure(),
              ),
            );
          }
        },
        fetchPictureComments: (e) async {
          emit(state.copyWith(status: CommentStatus.loading));
          try {
            _commentSubscription?.cancel();
            _commentSubscription = _iPostRepository
                .getPostComment(postId: e.post.id!)
                .listen((comments) async {
              final allComments = await Future.wait(comments);
              add(CommentsEvent.updateComments(comment: allComments));
              emit(
                state.copyWith(
                  picturePost: e.post,
                  status: CommentStatus.loaded,
                ),
              );
            });
          } catch (e) {
            emit(
              state.copyWith(
                status: CommentStatus.error,
                failure: const GeatFailure(),
              ),
            );
          }
        },
        updateComments: (e) async {
          emit(state.copyWith(comment: e.comment));
        },
        postComments: (e) async {
          emit(state.copyWith(status: CommentStatus.submitting));
          try {
            final author = User.empty.copyWith(id: _authBloc.state.user);
            final comment = Comments(
              postid: state.textPost?.id ?? state.picturePost?.id ?? '',
              //todo!!: be carefull here something might break
              author: author,
              content: e.content,
              date: DateTime.now(),
            );
            _iPostRepository.createComments(
              textPost: state.textPost!,
              picturePost: state.picturePost!,
              comment: comment,
            );
            emit(state.copyWith(status: CommentStatus.loaded));
          } catch (e) {
            emit(
              state.copyWith(
                status: CommentStatus.error,
                failure: const GeatFailure(),
              ),
            );
          }
        },
      );
    });
  }
}
