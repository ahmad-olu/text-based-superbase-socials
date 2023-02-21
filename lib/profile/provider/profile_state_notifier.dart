import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/model/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
part 'profile_state_notifier.freezed.dart';

enum ProfileStatus { initial, loading, loaded, failure }

@freezed
@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required User? user,
    required List<Post> post,
    required List<ReImagined> reImagined,
    required bool isCurrentUser,
    required bool isFollowing,
    required ProfileStatus status,
    required Exception? failure,
  }) = _ProfileState;

  factory ProfileState.initial() => const _ProfileState(
        user: null,
        post: [],
        reImagined: [],
        isCurrentUser: false,
        isFollowing: false,
        status: ProfileStatus.initial,
        failure: null,
      );
}

class ProfileNotifier extends StateNotifier<ProfileState> {
  ProfileNotifier() : super(ProfileState.initial());
  StreamSubscription<List<Post>>? _postsSubscription;

  Future<void> loadUserData(String userId) async {
    state = state.copyWith(status: ProfileStatus.loading);
    try {
      // final user =
      //             await _userRepository.getUserWithId(userId: e.userId);
      //         final isCurrentUser = _authBloc.state.user!.uid == e.userId;

      //         final isFollowing = await _userRepository.isFollowing(
      //           userId: _authBloc.state.user!.uid,
      //           otherUserId: e.userId,
      //         );

      // _postsSubscription?.cancel();
      //         _postsSubscription = _postRepository
      //             .getUserPost(userId: e.userId)
      //             .listen((posts) async {
      //           final allPosts = await Future.wait(posts);
      //           add(ProfileEvent.updatePost(allPosts));
      //         });

      // emit(
      //           state.copyWith(
      //             user: user!,
      //             isCurrentUser: isCurrentUser,
      //             isFollowing: isFollowing,
      //             status: ProfileStatus.loaded,
      //           ),
      //         );
    } catch (e) {
      state = state.copyWith(
        status: ProfileStatus.failure,
        failure: Exception(e),
      );
    }
  }

  Future<void> followUser() async {
    // try {
    //           _userRepository.followUser(
    //             userId: _authBloc.state.user!.uid,
    //             followUserId: state.user.id,
    //           );
    //           final updateUser =
    //               state.user.copyWith(followers: state.user.followers + 1);
    //           emit(state.copyWith(user: updateUser, isFollowing: true));
    //         } on Exception catch (e) {
    //           emit(
    //             state.copyWith(
    //               status: ProfileStatus.error,
    //               failure: e,
    //             ),
    //           );
    //         }
  }
  Future<void> unFollowUser() async {
    // try {
    //           _userRepository.unFollowUser(
    //             userId: _authBloc.state.user!.uid,
    //             unFollowUserId: state.user.id,
    //           );
    //           final updateUser =
    //               state.user.copyWith(followers: state.user.followers - 1);
    //           emit(state.copyWith(user: updateUser, isFollowing: false));
    //         } on Exception catch (e) {
    //           emit(
    //             state.copyWith(
    //               status: ProfileStatus.error,
    //               failure: e,
    //             ),
    //           );
    //         }
  }

  @override
  void dispose() {
    _postsSubscription?.cancel();
    super.dispose();
  }
}
