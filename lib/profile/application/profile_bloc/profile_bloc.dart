import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/domain/model/saved_post_model.dart';
import 'package:geat/feed/application/liked_post_cubit/liked_post_cubit.dart';
import 'package:geat/post/domain/post_model.dart';
import 'package:geat/post/infrastructure/post_repository.dart';
import 'package:geat/profile/domain/user_model.dart';
import 'package:geat/profile/infrastructure/user_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AuthBloc _authBloc;
  final PostRepository _postRepository;
  final LikedPostCubit _likedPostCubit;
  final UserRepository _userRepository;

  StreamSubscription<List<Future<Post?>>>? _postsSubscription;
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
              _postsSubscription?.cancel();
              _postsSubscription = _postRepository
                  .getUserPost(userId: e.userId)
                  .listen((posts) async {
                final allPosts = await Future.wait(posts);
                add(ProfileEvent.updatePost(allPosts));
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
          updatePost: (e) async {
            emit(state.copyWith(post: e.post));
            final likedPostIds = await _postRepository.getLikedPostIds(
              userId: _authBloc.state.user!.uid,
              posts: e.post,
            );
            _likedPostCubit.updateLikedPost(postIds: likedPostIds);
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
    _postsSubscription?.cancel();
    // _reImaginedPostsSubscription?.cancel();
    _savedPostsSubscription?.cancel();
    return super.close();
  }
}
