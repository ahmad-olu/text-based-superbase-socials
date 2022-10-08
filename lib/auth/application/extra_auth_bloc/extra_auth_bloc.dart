import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/infrastructure/firebase_auth_facade.dart';

part 'extra_auth_event.dart';
part 'extra_auth_state.dart';
part 'extra_auth_bloc.freezed.dart';

class ExtraAuthBloc extends Bloc<ExtraAuthEvent, ExtraAuthState> {
  final AuthFacade _authFacade;
  ExtraAuthBloc(this._authFacade)
      : super(const ExtraAuthState.initial(isLoading: false, sent: false)) {
    on<ExtraAuthEvent>((event, emit) async {
      await event.map(
        sendEmailVerification: (e) async {
          emit(
            const ExtraAuthState.needsVerification(
              isLoading: true,
              sent: false,
            ),
          );
          await _authFacade.sendEmailVerification();
          emit(
            const ExtraAuthState.needsVerification(
              isLoading: false,
              sent: true,
            ),
          );
        },
        forgotPassword: (e) async {
          emit(
            const ExtraAuthState.forgotPasswordState(
              isLoading: false,
              exception: null,
              sent: false,
            ),
          );
          final email = e.email;
          if (email == null) {
            return;
          }
          emit(
            const ExtraAuthState.forgotPasswordState(
              isLoading: true,
              exception: null,
              sent: false,
            ),
          );
          bool didSendEmail = false;
          Exception? exception;
          try {
            await _authFacade.sendPasswordReset(toEmail: email);
            didSendEmail = true;
            exception = null;
          } on Exception catch (e) {
            didSendEmail = false;
            exception = e;
          }
          emit(
            ExtraAuthState.forgotPasswordState(
              isLoading: false,
              exception: exception,
              sent: didSendEmail,
            ),
          );
        },
      );
    });
  }
}
