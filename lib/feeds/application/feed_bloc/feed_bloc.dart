import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/core/core.dart';
import 'package:geat/core/core.dart';
import 'package:geat/editor/editor.dart';
import 'package:geat/feeds/application/like_post_cubit/liked_post_cubit.dart';
import 'package:geat/post/domain/i_post_repository.dart';
import 'package:geat/post/domain/model.dart';
import 'package:injectable/injectable.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

@injectable
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final IPostRepository _iPostRepository;
  final AuthBloc _authBloc;
  final LikedPostCubit _likedPostCubit;
  FeedBloc(this._iPostRepository, this._authBloc, this._likedPostCubit)
      : super(FeedState.initial()) {
    on<FeedEvent>((event, emit) {
      event.map(
        fetchTextPosts: (e) async {
          emit(state.copyWith(textPost: [], status: FeedStatus.loading));
          try {
            final post = await _iPostRepository.getUserTextFeed(
              userId: _authBloc.state.user,
            );
            final likedPostIds = await _iPostRepository.getTextLikedPostIds(
              userid: _authBloc.state.user,
              posts: post,
            );
            _likedPostCubit.updateLikedPost(
              postIds: likedPostIds,
            );
            emit(state.copyWith(textPost: post, status: FeedStatus.loaded));
          } catch (e) {
            emit(
              state.copyWith(
                status: FeedStatus.error,
                failure: const GeatFailure(),
              ),
            );
          }
        },
        fetchPicturePosts: (e) async {
          emit(state.copyWith(picturePost: [], status: FeedStatus.loading));
          try {
            final post = await _iPostRepository.getUserPictureFeed(
              userId: _authBloc.state.user,
            );
            final likedPostIds = await _iPostRepository.getPictureLikedPostIds(
              userid: _authBloc.state.user,
              posts: post,
            );
            _likedPostCubit.updateLikedPost(postIds: likedPostIds);
            // final likedTextPostIds = await _iPostRepository.getTextLikedPostIds(
            // userid: _authBloc.state.user, posts: post);
            //todo: like rewrite post feature
            emit(state.copyWith(picturePost: post, status: FeedStatus.loaded));
          } catch (e) {
            emit(
              state.copyWith(
                status: FeedStatus.error,
                failure: const GeatFailure(),
              ),
            );
          }
        },
        paginateTextPosts: (e) async {
          emit(state.copyWith(status: FeedStatus.paginating));
          try {
            final lastPostId =
                state.textPost.isEmpty ? state.textPost.last.id : null;
            final posts = await _iPostRepository.getUserTextFeed(
              userId: _authBloc.state.user,
              lastPostId: lastPostId,
            );
            final updatedPosts = List<TextPost>.from(state.textPost)
              ..addAll(posts);
            final likedPostIds = await _iPostRepository.getTextLikedPostIds(
              userid: _authBloc.state.user,
              posts: posts,
            );
            _likedPostCubit.updateLikedPost(postIds: likedPostIds);
            emit(
              state.copyWith(
                textPost: updatedPosts,
                status: FeedStatus.loaded,
              ),
            );
          } catch (e) {
            emit(
              state.copyWith(
                status: FeedStatus.error,
                failure: const GeatFailure(),
              ),
            );
          }
        },
        paginatePicturePosts: (e) async {
          emit(state.copyWith(status: FeedStatus.paginating));
          try {
            final lastPostId =
                state.picturePost.isEmpty ? state.picturePost.last.id : null;
            final posts = await _iPostRepository.getUserPictureFeed(
              userId: _authBloc.state.user,
              lastPostId: lastPostId,
            );
            final updatedPosts = List<PicturePost>.from(state.picturePost)
              ..addAll(posts);
            final likedPostIds = await _iPostRepository.getPictureLikedPostIds(
              userid: _authBloc.state.user,
              posts: posts,
            );
            _likedPostCubit.updateLikedPost(postIds: likedPostIds);
            emit(
              state.copyWith(
                picturePost: updatedPosts,
                status: FeedStatus.loaded,
              ),
            );
          } catch (e) {
            emit(
              state.copyWith(
                status: FeedStatus.error,
                failure: const GeatFailure(),
              ),
            );
          }
        },
      );
    });
  }
}
