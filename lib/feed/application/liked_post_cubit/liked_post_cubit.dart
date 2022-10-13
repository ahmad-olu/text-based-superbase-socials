import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/post/domain/post_model.dart';
import 'package:geat/post/infrastructure/post_repository.dart';

part 'liked_post_state.dart';
part 'liked_post_cubit.freezed.dart';

class LikedPostCubit extends Cubit<LikedPostState> {
  final AuthBloc _authBloc;
  final PostRepository _postRepository;
  LikedPostCubit(this._authBloc, this._postRepository)
      : super(LikedPostState.initial());
  void updateLikedPost({required Set<String> postIds}) {
    emit(
      state.copyWith(
        likedPostIds: Set<String>.from(state.likedPostIds)..addAll(postIds),
      ),
    );
  }

  void likePost({required Post post}) {
    _postRepository.createLike(
      post: post,
      userId: _authBloc.state.user!.uid,
    );
    emit(
      state.copyWith(
        likedPostIds: Set<String>.from(state.likedPostIds)..add(post.id!),
        recentlyLikedPostIds: Set<String>.from(state.likedPostIds)
          ..add(post.id!),
      ),
    );
  }

  void unLikePost({required Post post}) {
    _postRepository.deleteLiked(
      postId: post.id!,
      userId: _authBloc.state.user!.uid,
    );
    emit(
      state.copyWith(
        likedPostIds: Set<String>.from(state.likedPostIds)..remove(post.id),
        recentlyLikedPostIds: Set<String>.from(state.likedPostIds)
          ..remove(post.id),
      ),
    );
  }

  // void likeReWritePost({required ReImagined post}) {
  //   _postRepository.createReWriteLike(
  //     post: post,
  //     userId: _authBloc.state.user!.uid,
  //   );
  //   emit(
  //     state.copyWith(
  //       likedPostIds: Set<String>.from(state.likedPostIds)..add(post.id!),
  //       recentlyLikedPostIds: Set<String>.from(state.likedPostIds)
  //         ..add(post.id!),
  //     ),
  //   );
  // }

  // void unLikeReWritePost({required ReImagined post}) {
  //   _postRepository.deleteReWriteLiked(
  //     postId: post.id!,
  //     userId: _authBloc.state.user!.uid,
  //   );
  //   emit(
  //     state.copyWith(
  //       likedPostIds: Set<String>.from(state.likedPostIds)..remove(post.id),
  //       recentlyLikedPostIds: Set<String>.from(state.likedPostIds)
  //         ..remove(post.id),
  //     ),
  //   );
  // }

  void clearAllLikedPosts() {
    emit(LikedPostState.initial());
  }
}
