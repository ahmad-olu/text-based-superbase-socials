import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/core/core.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

part 'registration_bloc.freezed.dart';
part 'registration_event.dart';
part 'registration_state.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final IAuthFacade _iAuthFacade;
  RegistrationBloc(this._iAuthFacade) : super(RegistrationState.initial()) {
    on<RegistrationEvent>(
      (event, emit) async {
        await event.map(
          usernameChanged: (e) async {
            var username = UsernameInput.dirty(value: e.usernameStr);
            emit(
              state.copyWith(
                username: username,
                isCheckingUsername: username.valid,
                status: state.status,
              ),
            );
            if (username.valid) {
              final isUsernameAvailable = await _iAuthFacade.displaynameCheck(
                displayname: username.value,
              );
              if (!isUsernameAvailable) {
                username = UsernameInput.dirty(
                  value: e.usernameStr,
                  serverError: UsernameInputError.taken,
                );
              }
              emit(
                RegistrationState(
                  username: username,
                  email: state.email,
                  password: state.password,
                  isCheckingUsername: false,
                  status: state.status,
                ),
              );
            }
          },
          usernameUnfocused: (e) async {
            final username = UsernameInput.dirty(value: state.username.value);
            emit(
              state.copyWith(
                username: username,
                status: state.status,
              ),
            );
          },
          emailChanged: (e) async {
            final email = Email.dirty(e.emailStr);
            emit(
              state.copyWith(
                email: email.valid ? email : Email.pure(e.emailStr),
                status: state.status,
              ),
            );
          },
          emailUnfocused: (e) async {
            final email = Email.dirty(state.email.value);
            emit(
              state.copyWith(
                email: email,
                status: state.status,
              ),
            );
          },
          passwordChanged: (e) async {
            final password = Password.dirty(e.passwordStr);
            emit(
              state.copyWith(
                password:
                    password.valid ? password : Password.pure(e.passwordStr),
                status: state.status,
              ),
            );
          },
          passwordUnfocused: (e) async {
            final password = Password.dirty(state.password.value);
            emit(
              state.copyWith(
                password: password,
                status: state.status,
              ),
            );
          },
          formSubmitted: (e) async {
            final email = state.email.value;
            final password = state.password.value;
            final username = state.username.value;
            try {
              emit(
                RegistrationState(
                  username: state.username,
                  isCheckingUsername: false,
                  email: state.email,
                  password: state.password,
                  status: RegistrationStatus.submitting,
                ),
              );
              await _iAuthFacade.signUp(
                username: username,
                emailAddress: email,
                password: password,
              );
              emit(
                RegistrationState(
                  username: state.username,
                  isCheckingUsername: false,
                  email: state.email,
                  password: state.password,
                  status: RegistrationStatus.succeeded,
                ),
              );
            } catch (e) {
              if (e is ArgumentError && state.username.value == username) {
                emit(
                  RegistrationState(
                    username: UsernameInput.dirty(
                      value: username,
                      serverError: UsernameInputError.taken,
                    ),
                    email: state.email,
                    password: state.password,
                    isCheckingUsername: state.isCheckingUsername,
                    status: RegistrationStatus.failed,
                  ),
                );
              } else {
                emit(
                  RegistrationState(
                    username: state.username,
                    email: state.email,
                    password: state.password,
                    isCheckingUsername: state.isCheckingUsername,
                    status: RegistrationStatus.failed,
                  ),
                );
              }
            }
          },
        );
      },
      transformer: debounceRestartable(),
      //transformer: sequential(),
    );
  }

  EventTransformer<RegistrationEvent> debounceRestartable<RegistrationEvent>() {
    return (events, mapper) => restartable<RegistrationEvent>()
        .call(events.debounceTime(const Duration(milliseconds: 400)), mapper);
  }
}
