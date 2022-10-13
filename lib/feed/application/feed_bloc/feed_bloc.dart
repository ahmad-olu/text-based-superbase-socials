import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/feed/application/liked_post_cubit/liked_post_cubit.dart';
import 'package:geat/post/domain/post_model.dart';
import 'package:geat/post/infrastructure/post_repository.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final PostRepository _postRepository;
  final AuthBloc _authBloc;
  final LikedPostCubit _likedPostCubit;
  FeedBloc(this._postRepository, this._authBloc, this._likedPostCubit)
      : super(FeedState.initial()) {
    on<FeedEvent>((event, emit) async {
      await event.map(
        fetchPosts: (e) async {
          emit(state.copyWith(post: [], status: FeedStatus.loading));
          try {
            final post = await _postRepository.getUserFeed(
              userId: _authBloc.state.user!.uid,
            );
            _likedPostCubit.clearAllLikedPosts();
            final likedPostIds = await _postRepository.getLikedPostIds(
              userId: _authBloc.state.user!.uid,
              posts: post,
            );
            _likedPostCubit.updateLikedPost(
              postIds: likedPostIds,
            );
            emit(state.copyWith(post: post, status: FeedStatus.loaded));
          } on Exception catch (e) {
            emit(
              state.copyWith(
                status: FeedStatus.error,
                failure: e,
              ),
            );
          }
        },
        paginatePosts: (e) async {
          emit(state.copyWith(status: FeedStatus.paginating));
          try {
            final lastPostId = state.post.isEmpty ? state.post.last!.id : null;
            final posts = await _postRepository.getUserFeed(
              userId: _authBloc.state.user!.uid,
              lastPostId: lastPostId,
            );
            final updatedPosts = List<Post?>.from(state.post)..addAll(posts);
            final likedPostIds = await _postRepository.getLikedPostIds(
              userId: _authBloc.state.user!.uid,
              posts: posts,
            );
            _likedPostCubit.updateLikedPost(postIds: likedPostIds);
            emit(
              state.copyWith(
                post: updatedPosts,
                status: FeedStatus.loaded,
              ),
            );
          } on Exception catch (e) {
            emit(
              state.copyWith(
                status: FeedStatus.error,
                failure: e,
              ),
            );
          }
        },
      );
    });
  }
}
