import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/core/core.dart';
import 'package:injectable/injectable.dart';

part 'walk_in_form_state.dart';
part 'walk_in_form_cubit.freezed.dart';

@injectable
class WalkInFormCubit extends Cubit<WalkInFormState> {
  WalkInFormCubit(this._iAuthFacade) : super(WalkInFormState.initial());
  final IAuthFacade _iAuthFacade;

  void usernameChanged(String usernameStr) {
    final username = Username2Input.dirty(usernameStr);
    emit(
      state.copyWith(
        username: username.valid ? username : Username2Input.pure(usernameStr),
        status: Formz.validate([username, state.password]),
      ),
    );
  }

  void passwordChanged(String passwordStr) {
    final password = Password.dirty(passwordStr);
    emit(
      state.copyWith(
        password: password.valid ? password : Password.pure(passwordStr),
        status: Formz.validate([state.username, password]),
      ),
    );
  }

  Future<void> walkIn() async {
    final username = Username2Input.dirty(state.username.value);
    final password = Password.dirty(state.password.value);
    try {
      emit(
        state.copyWith(
          username: username,
          password: password,
          status: Formz.validate([username, password]),
        ),
      );
      if (state.status.isValidated) {
        emit(state.copyWith(status: FormzStatus.submissionInProgress));
        await _iAuthFacade.walkIn(
          username: state.username.value,
          password: state.password.value,
        );
        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          failure: const AuthFailure(),
        ),
      );
    }
  }
}
