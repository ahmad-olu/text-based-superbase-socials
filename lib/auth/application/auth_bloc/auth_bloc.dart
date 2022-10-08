import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:geat/auth/infrastructure/firebase_auth_facade.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacade _authRepository;
  StreamSubscription<auth.User?>? _userSubscription;
  AuthBloc(
    this._authRepository,
  ) : super(AuthState.unKnown()) {
    _userSubscription = _authRepository.user.listen((user) {
      add(AuthEvent.authUserChanged(user: user));
    });

    on<AuthEvent>((event, emit) async {
      await event.map(
        authUserChanged: (e) async {
          if (e.user != null) {
            emit(AuthState.authenticated(user: e.user));
            // if (e.user!.emailVerified == false) {
            //   emit(AuthState.emailNotVerified(user: e.user));
            // }
            // if (e.user != null && e.user!.emailVerified == true) {
            //   emit(AuthState.authenticated(user: e.user));
            // }
          } else {
            emit(AuthState.unauthenticated());
          }
        },
        signOut: (e) async {
          await _authRepository.signOut();
        },
      );
    });
  }
  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}
