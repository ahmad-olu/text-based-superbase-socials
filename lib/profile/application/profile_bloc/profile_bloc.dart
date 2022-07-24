import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/core/core.dart';
import 'package:geat/core/core.dart';
import 'package:geat/editor/editor.dart';
import 'package:geat/feeds/application/like_post_cubit/liked_post_cubit.dart';
import 'package:geat/post/domain/i_post_repository.dart';
import 'package:geat/post/domain/model.dart';
import 'package:geat/profile/profile.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IUserRepository _iUserRepository;
  final AuthBloc _authBloc;
  final IPostRepository _iPostRepository;
  final LikedPostCubit _likedPostCubit;

  late StreamSubscription<List<Future<TextPost>>> _textPostSubscription;
  late StreamSubscription<List<Future<PicturePost>>> _picturePostSubscription;
  //late StreamSubscription<List<Future<Rewrite>>> _reWriteSubscription;
  //todo!! get rewrite subscription by getting subscription id

  ProfileBloc(
    this._iUserRepository,
    this._authBloc,
    this._iPostRepository,
    this._likedPostCubit,
  ) : super(ProfileState.initial()) {
    //todo* The declaration 'close' isn't referenced.Try removing the declaration of 'close'.
    @override
    // ignore: unused_element
    Future<void> close() {
      _textPostSubscription.cancel();
      _picturePostSubscription.cancel();
      return super.close();
    } //todo? find out how to close a subscription in the new bloc

    on<ProfileEvent>((event, emit) {
      event.map(
        loadUser: (e) async {
          emit(state.copyWith(status: ProfileStatus.loading));
          try {
            final user = await _iUserRepository.getUserWithId(userId: e.userid);
            final isCurrentUser = _authBloc.state.user == e.userid;

            final isFollowing = await _iUserRepository.isFollowing(
              userId: _authBloc.state.user,
              otherUserId: e.userid,
            );

            _textPostSubscription.cancel();
            _picturePostSubscription.cancel();
            _textPostSubscription = _iPostRepository
                .getUserTextPost(userId: e.userid)
                .listen((posts) async {
              final List<TextPost> allPosts = await Future.wait(posts);
              add(ProfileEvent.updateTextPost(allPosts));
            });

            _picturePostSubscription = _iPostRepository
                .getUserpicturePost(userId: e.userid)
                .listen((posts) async {
              final List<PicturePost> allPosts = await Future.wait(posts);
              add(ProfileEvent.updatePicturePost(allPosts));
            });
            emit(
              state.copyWith(
                user: user,
                isCurrentUser: isCurrentUser,
                isFollowing: isFollowing,
                status: ProfileStatus.loaded,
              ),
            );
          } catch (e) {
            emit(
              state.copyWith(
                failure: const GeatFailure(),
                status: ProfileStatus.error,
              ),
            );
          }
        },
        updateTextPost: (e) async {
          emit(state.copyWith(textPost: e.textPost));
          final likedPostIds = await _iPostRepository.getTextLikedPostIds(
            userid: _authBloc.state.user,
            posts: e.textPost,
          );
          _likedPostCubit.updateLikedPost(postIds: likedPostIds);
        },
        updatePicturePost: (e) async {
          emit(state.copyWith(picturePost: e.picturePost));
          final likedPostIds = await _iPostRepository.getPictureLikedPostIds(
            userid: _authBloc.state.user,
            posts: e.picturePost,
          );
          _likedPostCubit.updateLikedPost(postIds: likedPostIds);
        },
        followUser: (e) async {
          try {
            _iUserRepository.followUser(
              userId: _authBloc.state.user,
              followUserId: state.user.id,
            );
            final updateUser =
                state.user.copyWith(followers: state.user.followers + 1);
            emit(state.copyWith(user: updateUser, isFollowing: true));
          } catch (e) {
            emit(
              state.copyWith(
                status: ProfileStatus.error,
                failure: const GeatFailure(),
              ),
            );
          }
        },
        unfollowUser: (e) async {
          try {
            _iUserRepository.unFollowUser(
              userId: _authBloc.state.user,
              unFollowUserId: state.user.id,
            );
            final updateUser =
                state.user.copyWith(followers: state.user.followers - 1);
            emit(state.copyWith(user: updateUser, isFollowing: false));
          } catch (e) {
            emit(
              state.copyWith(
                status: ProfileStatus.error,
                failure: const GeatFailure(),
              ),
            );
          }
        },
      );
    });
  }
}
