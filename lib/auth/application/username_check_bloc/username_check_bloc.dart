import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/infrastructure/firebase_auth_facade.dart';
import 'package:geat/core/domain/username_input.dart';
import 'package:rxdart/rxdart.dart';

part 'username_check_event.dart';
part 'username_check_state.dart';
part 'username_check_bloc.freezed.dart';

class UsernameCheckBloc extends Bloc<UsernameCheckEvent, UsernameCheckState> {
  final AuthFacade _authFacade;
  UsernameCheckBloc(this._authFacade) : super(UsernameCheckState.initial()) {
    on<UsernameCheckEvent>(
      (event, emit) async {
        await event.map(
          userChanged: (e) async {
            var username = UsernameInput.dirty(value: e.username);
            emit(
              UsernameCheckState(
                username: username,
                isCheckingUsername: username.valid,
                status: state.status,
              ),
            );
            if (username.valid) {
              final isUsernameAvailable =
                  await _authFacade.usernameCheck(username: username.value);
              if (!isUsernameAvailable) {
                username = UsernameInput.dirty(
                  value: e.username,
                  serverError: UsernameInputError.taken,
                );
              }
              emit(
                UsernameCheckState(
                  username: username,
                  isCheckingUsername: false,
                  status: state.status,
                ),
              );
            }
          },
          submit: (e) async {
            final username = state.username.value;
            try {
              emit(
                UsernameCheckState(
                  username: state.username,
                  isCheckingUsername: false,
                  status: UsernameCheckStatus.submitting,
                ),
              );
              //todo!!: await _authrepo.register(username: username);
              emit(
                UsernameCheckState(
                  username: state.username,
                  isCheckingUsername: false,
                  status: UsernameCheckStatus.succeeded,
                ),
              );
            } catch (e) {
              if (e is ArgumentError && state.username.value == username) {
                emit(
                  UsernameCheckState(
                    username: UsernameInput.dirty(
                      value: username,
                      serverError: UsernameInputError.taken,
                    ),
                    isCheckingUsername: state.isCheckingUsername,
                    status: UsernameCheckStatus.failed,
                  ),
                );
              } else {
                emit(
                  UsernameCheckState(
                    username: state.username,
                    isCheckingUsername: state.isCheckingUsername,
                    status: UsernameCheckStatus.failed,
                  ),
                );
              }
            }
          },
        );
      },
      transformer: debounceRestartable(),
    );
  }
  EventTransformer<UsernameCheckEvent>
      debounceRestartable<UsernameCheckEvent>() {
    return (events, mapper) => restartable<UsernameCheckEvent>()
        .call(events.debounceTime(const Duration(milliseconds: 400)), mapper);
  }
}
