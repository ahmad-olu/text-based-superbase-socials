import 'dart:async';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/repository/repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
part 'auth_state_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({AuthUser? user}) = _AuthState;

  factory AuthState.unknown() => const _AuthState();
  factory AuthState.authenticated(AuthUser user) => _AuthState(user: user);
  factory AuthState.userDeleted() => const _AuthState();

  factory AuthState.unAuthenticated() => const _AuthState();
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this.authRepo) : super(AuthState.unknown()) {
    _awsHubEvent = Amplify.Hub.listen(
      [HubChannel.Auth],
      (hubEvent) => authUserChanged(hubEvent),
    );
  }
  late StreamSubscription<HubEvent> _awsHubEvent;
  final AuthRepository authRepo;

  Future<void> authUserChanged(HubEvent hubEvent) async {
    switch (hubEvent.eventName) {
      case 'SIGNED_IN':
        final user = await authRepo.getCurrentUser();
        state = AuthState.authenticated(user);
        break;
      case 'SIGNED_OUT':
        state = AuthState.unAuthenticated();
        break;
      case 'SESSION_EXPIRED':
        state = AuthState.unAuthenticated();
        break;
      case 'USER_DELETED':
        state = AuthState.unAuthenticated();
        break;
    }

    Future<void> logOut() async {
      await authRepo.signOutCurrentUser();
    }

    @override
    void dispose() {
      _awsHubEvent.cancel();
      super.dispose();
    }
  }
}
