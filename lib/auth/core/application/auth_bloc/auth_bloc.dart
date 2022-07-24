import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/core/core.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _iAuthFacade;
  AuthBloc(this._iAuthFacade) : super(const AuthState.initial(user: '')) {
    on<AuthEvent>((event, emit) {
      event.map(
        authCheckRequested: (e) async {
          final userOption = await _iAuthFacade.user;
          emit(
            userOption.fold(
              () => const AuthState.unauthenticated(user: ''),
              (userid) => AuthState.authenticated(user: userid),
            ),
          );
        },
        signedOut: (e) async {
          await _iAuthFacade.walkOut();
          emit(const AuthState.unauthenticated(user: ''));
        },
      );
    });
  }
}
