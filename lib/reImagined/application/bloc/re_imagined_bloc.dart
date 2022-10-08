import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/domain/geat_failure.dart';
import 'package:geat/post/domain/text_post_model.dart';
import 'package:geat/post/infrastructure/post_repository.dart';
import 'package:geat/reImagined/domain/reImagied_model.dart';

part 're_imagined_event.dart';
part 're_imagined_state.dart';
part 're_imagined_bloc.freezed.dart';

class ReImaginedBloc extends Bloc<ReImaginedEvent, ReImaginedState> {
  final PostRepository _postRepository;
  final AuthBloc _authBloc;
  StreamSubscription<List<Future<ReImagined?>>>? _reImaginedSubscription;
  ReImaginedBloc(this._postRepository, this._authBloc)
      : super(ReImaginedState.initial()) {
    on<ReImaginedEvent>((event, emit) async {
      await event.map(
        fetchTextReImagined: (e) async {
          emit(state.copyWith(status: ReImaginedStatus.loading));
          try {
            _reImaginedSubscription?.cancel();
            _reImaginedSubscription = _postRepository
                .getTextPostReWrite(postId: e.post.id!)
                .listen((reImagined) async {
              final allReImagined = await Future.wait(reImagined);
              add(
                ReImaginedEvent.updateReImagined(reImagined: allReImagined),
              );
            });
            emit(
              state.copyWith(textPost: e.post, status: ReImaginedStatus.loaded),
            );
          } on Exception catch (e) {
            emit(
              state.copyWith(
                status: ReImaginedStatus.error,
                failure: e,
              ),
            );
          }
        },
        updateReImagined: (e) async {
          emit(state.copyWith(reImagined: e.reImagined));
        },
        postReImagined: (e) async {
          emit(state.copyWith(status: ReImaginedStatus.submitting));
          try {
            final author = await _postRepository.getUser(
              userId: _authBloc.state.user!.uid,
            );
            final reImagined = ReImagined(
              author: author,
              content: e.content,
              postId: state.textPost!.id!,
              likes: 0,
              date: FieldValue.serverTimestamp(),
            );

            _postRepository.createTextReImagined(
              textPost: state.textPost!,
              reImagined: reImagined,
            );
            emit(state.copyWith(status: ReImaginedStatus.loaded));
          } on Exception catch (e) {
            emit(
              state.copyWith(
                status: ReImaginedStatus.error,
                failure: e,
              ),
            );
          }
        },
        postReset: (e) async {
          emit(state.copyWith(status: ReImaginedStatus.initial));
        },
      );
    });
  }
  @override
  Future<void> close() {
    _reImaginedSubscription?.cancel();
    return super.close();
  }
}
