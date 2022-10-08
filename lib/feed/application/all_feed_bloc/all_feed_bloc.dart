import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/post/domain/comic_post_model.dart';
import 'package:geat/post/domain/text_post_model.dart';
import 'package:geat/post/infrastructure/post_repository.dart';

part 'all_feed_event.dart';
part 'all_feed_state.dart';
part 'all_feed_bloc.freezed.dart';

class AllFeedBloc extends Bloc<AllFeedEvent, AllFeedState> {
  final PostRepository _postRepository;
  StreamSubscription<List<Future<TextPost?>>>? _textPostsSubscription;
  StreamSubscription<List<Future<ComicPost?>>>? _comicPostsSubscription;
  AllFeedBloc(this._postRepository) : super(AllFeedState.initial()) {
    on<AllFeedEvent>((event, emit) async {
      await event.map(
        fetchAllPost: (e) async {
          try {
            emit(state.copyWith(status: AllFeedStatus.loading));
            _textPostsSubscription?.cancel();
            _textPostsSubscription =
                _postRepository.getAllTextPost().listen((posts) async {
              final allPosts = await Future.wait(posts);
              add(AllFeedEvent.updateAllTextPost(allPosts));
            });

            _comicPostsSubscription?.cancel();
            _comicPostsSubscription =
                _postRepository.getAllComicPost().listen((posts) async {
              final allPosts = await Future.wait(posts);
              add(AllFeedEvent.updateAllComicPost(allPosts));
            });
            emit(
              state.copyWith(
                status: AllFeedStatus.loaded,
              ),
            );
          } on Exception catch (e) {
            emit(
              state.copyWith(
                failure: e,
                status: AllFeedStatus.error,
              ),
            );
          }
        },
        updateAllTextPost: (e) async {
          emit(state.copyWith(textPost: e.textPost));
        },
        updateAllComicPost: (e) async {
          emit(state.copyWith(picturePost: e.comicPost));
        },
      );
    });
  }
  @override
  Future<void> close() {
    _textPostsSubscription?.cancel();
    _comicPostsSubscription?.cancel();
    return super.close();
  }
}
