import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/core/core.dart';
import 'package:geat/editor/editor.dart';
import 'package:geat/post/domain/i_post_repository.dart';
import 'package:geat/post/domain/model.dart';
import 'package:injectable/injectable.dart';

part 'liked_post_state.dart';
part 'liked_post_cubit.freezed.dart';

@injectable
class LikedPostCubit extends Cubit<LikedPostState> {
  final IPostRepository _iPostRepository;
  final AuthBloc _authBloc;
  LikedPostCubit(this._iPostRepository, this._authBloc)
      : super(LikedPostState.initial());
  void updateLikedPost({required Set<String> postIds}) {
    emit(
      state.copyWith(
        likedPostIds: Set<String>.from(state.likedPostIds)..addAll(postIds),
      ),
    );
  }

  void likeTextPost({required TextPost post}) {
    _iPostRepository.createTextLike(
      post: post,
      userId: _authBloc.state.user,
    );
    emit(
      state.copyWith(
        likedPostIds: Set<String>.from(state.likedPostIds)..add(post.id!),
        recentlyLikedPostIds: Set<String>.from(state.likedPostIds)
          ..add(post.id!),
      ),
    );
  }

  void unLikeTextPost({required TextPost post}) {
    _iPostRepository.deleteTextLiked(
      postId: post.id!,
      userId: _authBloc.state.user,
    );
    emit(
      state.copyWith(
        likedPostIds: Set<String>.from(state.likedPostIds)..remove(post.id),
        recentlyLikedPostIds: Set<String>.from(state.likedPostIds)
          ..remove(post.id),
      ),
    );
  }

  void likePicturePost({required PicturePost post}) {
    _iPostRepository.createPictureLike(
      post: post,
      userId: _authBloc.state.user,
    );
    emit(
      state.copyWith(
        likedPostIds: Set<String>.from(state.likedPostIds)..add(post.id!),
        recentlyLikedPostIds: Set<String>.from(state.likedPostIds)
          ..add(post.id!),
      ),
    );
  }

  void unLikePicturePost({required PicturePost post}) {
    _iPostRepository.deletePictureLiked(
      postId: post.id!,
      userId: _authBloc.state.user,
    );
    emit(
      state.copyWith(
        likedPostIds: Set<String>.from(state.likedPostIds)..remove(post.id),
        recentlyLikedPostIds: Set<String>.from(state.likedPostIds)
          ..remove(post.id),
      ),
    );
  }

  void likeReWritePost({required Rewrite post}) {
    _iPostRepository.createReWriteLike(
      post: post,
      userId: _authBloc.state.user,
    );
    emit(
      state.copyWith(
        likedPostIds: Set<String>.from(state.likedPostIds)..add(post.id!),
        recentlyLikedPostIds: Set<String>.from(state.likedPostIds)
          ..add(post.id!),
      ),
    );
  }

  void unLikeReWritePost({required Rewrite post}) {
    _iPostRepository.deleteReWriteLiked(
      postId: post.id!,
      userId: _authBloc.state.user,
    );
    emit(
      state.copyWith(
        likedPostIds: Set<String>.from(state.likedPostIds)..remove(post.id),
        recentlyLikedPostIds: Set<String>.from(state.likedPostIds)
          ..remove(post.id),
      ),
    );
  }

  void clearAllLikedPosts() {
    emit(LikedPostState.initial());
  }
}
