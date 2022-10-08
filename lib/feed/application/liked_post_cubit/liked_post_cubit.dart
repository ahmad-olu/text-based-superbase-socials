import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/post/domain/comic_post_model.dart';
import 'package:geat/post/domain/text_post_model.dart';
import 'package:geat/post/infrastructure/post_repository.dart';
import 'package:geat/reImagined/domain/reImagied_model.dart';

part 'liked_post_state.dart';
part 'liked_post_cubit.freezed.dart';

class LikedPostCubit extends Cubit<LikedPostState> {
  final AuthBloc _authBloc;
  final PostRepository _postRepository;
  LikedPostCubit(this._authBloc, this._postRepository)
      : super(LikedPostState.initial());
  void updateLikedTextPost({required Set<String> postIds}) {
    emit(
      state.copyWith(
        likedTextPostIds: Set<String>.from(state.likedTextPostIds)
          ..addAll(postIds),
      ),
    );
  }

  void updateLikedComicPost({required Set<String> postIds}) {
    emit(
      state.copyWith(
        likedComicPostIds: Set<String>.from(state.likedComicPostIds)
          ..addAll(postIds),
      ),
    );
  }

  void likeTextPost({required TextPost post}) {
    _postRepository.createTextLike(
      post: post,
      userId: _authBloc.state.user!.uid,
    );
    emit(
      state.copyWith(
        likedTextPostIds: Set<String>.from(state.likedTextPostIds)
          ..add(post.id!),
        recentlyLikedTextPostIds: Set<String>.from(state.likedTextPostIds)
          ..add(post.id!),
      ),
    );
  }

  void unLikeTextPost({required TextPost post}) {
    _postRepository.deleteTextLiked(
      postId: post.id!,
      userId: _authBloc.state.user!.uid,
    );
    emit(
      state.copyWith(
        likedTextPostIds: Set<String>.from(state.likedTextPostIds)
          ..remove(post.id),
        recentlyLikedTextPostIds: Set<String>.from(state.likedTextPostIds)
          ..remove(post.id),
      ),
    );
  }

  void likeComicPost({required ComicPost post}) {
    _postRepository.createComicLike(
      post: post,
      userId: _authBloc.state.user!.uid,
    );
    emit(
      state.copyWith(
        likedComicPostIds: Set<String>.from(state.likedComicPostIds)
          ..add(post.id!),
        recentlyLikedComicPostIds: Set<String>.from(state.likedComicPostIds)
          ..add(post.id!),
      ),
    );
  }

  void unLikeComicPost({required ComicPost post}) {
    _postRepository.deleteComicLiked(
      postId: post.id!,
      userId: _authBloc.state.user!.uid,
    );
    emit(
      state.copyWith(
        likedComicPostIds: Set<String>.from(state.likedComicPostIds)
          ..remove(post.id),
        recentlyLikedComicPostIds: Set<String>.from(state.likedComicPostIds)
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
