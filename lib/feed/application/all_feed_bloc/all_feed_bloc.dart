import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/post/domain/post_model.dart';
import 'package:geat/post/infrastructure/post_repository.dart';

part 'all_feed_event.dart';
part 'all_feed_state.dart';
part 'all_feed_bloc.freezed.dart';

class AllFeedBloc extends Bloc<AllFeedEvent, AllFeedState> {
  final PostRepository _postRepository;
  StreamSubscription<List<Future<Post?>>>? _postsSubscription;
  AllFeedBloc(this._postRepository) : super(AllFeedState.initial()) {
    on<AllFeedEvent>((event, emit) async {
      await event.map(
        fetchAllPost: (e) async {
          try {
            emit(state.copyWith(status: AllFeedStatus.loading));
            _postsSubscription?.cancel();
            _postsSubscription =
                _postRepository.getAllPost().listen((posts) async {
              final allPosts = await Future.wait(posts);
              add(AllFeedEvent.updateAllPost(allPosts));
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
        updateAllPost: (e) async {
          emit(state.copyWith(post: e.post));
        },
      );
    });
  }
  @override
  Future<void> close() {
    _postsSubscription?.cancel();
    return super.close();
  }
}
