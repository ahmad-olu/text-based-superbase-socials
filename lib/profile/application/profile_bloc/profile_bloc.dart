import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/domain/geat_failure.dart';
import 'package:geat/core/domain/model/saved_post_model.dart';
import 'package:geat/feed/application/liked_post_cubit/liked_post_cubit.dart';
import 'package:geat/post/domain/comic_post_model.dart';
import 'package:geat/post/domain/text_post_model.dart';
import 'package:geat/post/infrastructure/post_repository.dart';
import 'package:geat/profile/domain/user_model.dart';
import 'package:geat/profile/infrastructure/user_repository.dart';
import 'package:geat/reImagined/domain/reImagied_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AuthBloc _authBloc;
  final PostRepository _postRepository;
  final LikedPostCubit _likedPostCubit;
  final UserRepository _userRepository;

  StreamSubscription<List<Future<TextPost?>>>? _textPostsSubscription;
  StreamSubscription<List<Future<ComicPost?>>>? _comicPostsSubscription;
  StreamSubscription<List<Future<SavedPost?>>>? _savedPostsSubscription;
  // StreamSubscription<List<Future<ReImagined?>>>? _reImaginedPostsSubscription;
  ProfileBloc(
    this._postRepository,
    this._likedPostCubit,
    this._authBloc,
    this._userRepository,
  ) : super(ProfileState.initial()) {
    on<ProfileEvent>(
      (event, emit) async {
        await event.map(
          loadUser: (e) async {
            emit(state.copyWith(status: ProfileStatus.loading));
            try {
              final user =
                  await _userRepository.getUserWithId(userId: e.userId);
              final isCurrentUser = _authBloc.state.user!.uid == e.userId;

              final isFollowing = await _userRepository.isFollowing(
                userId: _authBloc.state.user!.uid,
                otherUserId: e.userId,
              );

              // emit.onEach(
              //   _iPostRepository.getUserTextPost(userId: e.userid),
              //   onData: (QuerySnapshot<TextPost> textPost) {
              //     add(ProfileEvent.updateTextPost(textPost.items));
              //   },
              // );
              // emit.onEach(
              //   _iPostRepository.getUserpicturePost(userId: e.userid),
              //   onData: (QuerySnapshot<ComicPost> comicPost) {
              //     add(ProfileEvent.updatePicturePost(comicPost.items));
              //   },
              // );

              _textPostsSubscription?.cancel();
              _textPostsSubscription = _postRepository
                  .getUserTextPost(userId: e.userId)
                  .listen((posts) async {
                final allPosts = await Future.wait(posts);
                add(ProfileEvent.updateTextPost(allPosts));
              });

              _comicPostsSubscription?.cancel();
              _comicPostsSubscription = _postRepository
                  .getUserComicPost(userId: e.userId)
                  .listen((posts) async {
                final allPosts = await Future.wait(posts);
                add(ProfileEvent.updateComicPost(allPosts));
              });

              _savedPostsSubscription?.cancel();
              _savedPostsSubscription = _postRepository
                  .getSavedPosts(userId: e.userId)
                  .listen((posts) async {
                final savedPosts = await Future.wait(posts);
                add(ProfileEvent.updateSavedPosts(savedPosts));
              });
              emit(
                state.copyWith(
                  user: user!,
                  isCurrentUser: isCurrentUser,
                  isFollowing: isFollowing,
                  status: ProfileStatus.loaded,
                ),
              );
            } on Exception catch (e) {
              emit(
                state.copyWith(
                  failure: e,
                  status: ProfileStatus.error,
                ),
              );
            }
          },
          updateTextPost: (e) async {
            emit(state.copyWith(textPost: e.textPost));
            final likedPostIds = await _postRepository.getTextLikedPostIds(
              userId: _authBloc.state.user!.uid,
              posts: e.textPost,
            );
            _likedPostCubit.updateLikedTextPost(postIds: likedPostIds);
          },
          updateComicPost: (e) async {
            emit(state.copyWith(picturePost: e.comicPost));
            final likedPostIds = await _postRepository.getComicLikedPostIds(
              userId: _authBloc.state.user!.uid,
              posts: e.comicPost,
            );
            _likedPostCubit.updateLikedComicPost(postIds: likedPostIds);
          },
          updateSavedPosts: (e) async {
            emit(state.copyWith(savedPosts: e.savedPosts));
          },
          followUser: (e) async {
            try {
              _userRepository.followUser(
                userId: _authBloc.state.user!.uid,
                followUserId: state.user.id,
              );
              final updateUser =
                  state.user.copyWith(followers: state.user.followers + 1);
              emit(state.copyWith(user: updateUser, isFollowing: true));
            } on Exception catch (e) {
              emit(
                state.copyWith(
                  status: ProfileStatus.error,
                  failure: e,
                ),
              );
            }
          },
          unFollowUser: (e) async {
            try {
              _userRepository.unFollowUser(
                userId: _authBloc.state.user!.uid,
                unFollowUserId: state.user.id,
              );
              final updateUser =
                  state.user.copyWith(followers: state.user.followers - 1);
              emit(state.copyWith(user: updateUser, isFollowing: false));
            } on Exception catch (e) {
              emit(
                state.copyWith(
                  status: ProfileStatus.error,
                  failure: e,
                ),
              );
            }
          },
        );
      },
      //transformer: restartable(),
    );
  }
  @override
  Future<void> close() {
    _textPostsSubscription?.cancel();
    _comicPostsSubscription?.cancel();
    // _reImaginedPostsSubscription?.cancel();
    _savedPostsSubscription?.cancel();
    return super.close();
  }
}
