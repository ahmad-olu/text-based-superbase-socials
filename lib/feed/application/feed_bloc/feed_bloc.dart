import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/domain/geat_failure.dart';
import 'package:geat/feed/application/liked_post_cubit/liked_post_cubit.dart';
import 'package:geat/post/domain/comic_post_model.dart';
import 'package:geat/post/domain/text_post_model.dart';
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
        fetchTextPosts: (e) async {
          emit(state.copyWith(textPost: [], status: FeedStatus.loading));
          try {
            final post = await _postRepository.getUserTextFeed(
              userId: _authBloc.state.user!.uid,
            );
            _likedPostCubit.clearAllLikedPosts();
            final likedPostIds = await _postRepository.getTextLikedPostIds(
              userId: _authBloc.state.user!.uid,
              posts: post,
            );
            _likedPostCubit.updateLikedTextPost(
              postIds: likedPostIds,
            );
            emit(state.copyWith(textPost: post, status: FeedStatus.loaded));
          } on Exception catch (e) {
            emit(
              state.copyWith(
                status: FeedStatus.error,
                failure: e,
              ),
            );
          }
        },
        fetchPicturePosts: (e) async {
          emit(state.copyWith(picturePost: [], status: FeedStatus.loading));
          try {
            final post = await _postRepository.getUserComicFeed(
              userId: _authBloc.state.user!.uid,
            );
            _likedPostCubit.clearAllLikedPosts();
            final likedPostIds = await _postRepository.getComicLikedPostIds(
              userId: _authBloc.state.user!.uid,
              posts: post,
            );
            _likedPostCubit.updateLikedComicPost(postIds: likedPostIds);
            //todo: like rewrite post feature
            emit(state.copyWith(picturePost: post, status: FeedStatus.loaded));
          } on Exception catch (e) {
            emit(
              state.copyWith(
                status: FeedStatus.error,
                failure: e,
              ),
            );
          }
        },
        paginateTextPosts: (e) async {
          emit(state.copyWith(status: FeedStatus.paginating));
          try {
            final lastPostId =
                state.textPost.isEmpty ? state.textPost.last!.id : null;
            final posts = await _postRepository.getUserTextFeed(
              userId: _authBloc.state.user!.uid,
              lastPostId: lastPostId,
            );
            final updatedPosts = List<TextPost?>.from(state.textPost)
              ..addAll(posts);
            final likedPostIds = await _postRepository.getTextLikedPostIds(
              userId: _authBloc.state.user!.uid,
              posts: posts,
            );
            _likedPostCubit.updateLikedTextPost(postIds: likedPostIds);
            emit(
              state.copyWith(
                textPost: updatedPosts,
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
        paginatePicturePosts: (e) async {
          emit(state.copyWith(status: FeedStatus.paginating));
          try {
            final lastPostId =
                state.picturePost.isEmpty ? state.picturePost.last!.id : null;
            final posts = await _postRepository.getUserComicFeed(
              userId: _authBloc.state.user!.uid,
              lastPostId: lastPostId,
            );
            final updatedPosts = List<ComicPost?>.from(state.picturePost)
              ..addAll(posts);
            final likedPostIds = await _postRepository.getComicLikedPostIds(
              userId: _authBloc.state.user!.uid,
              posts: posts,
            );
            _likedPostCubit.updateLikedComicPost(postIds: likedPostIds);
            emit(
              state.copyWith(
                picturePost: updatedPosts,
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
