import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/core/core.dart';
import 'package:geat/auth/registration/application/registration_bloc/registration_bloc.dart';

import 'package:injectable/injectable.dart';

part 'confirm_reg_form_state.dart';
part 'confirm_reg_form_cubit.freezed.dart';

@injectable
class ConfirmRegFormCubit extends Cubit<ConfirmRegFormState> {
  ConfirmRegFormCubit(this._iAuthFacade, this._registrationBloc)
      : super(ConfirmRegFormState.initial());
  final IAuthFacade _iAuthFacade;
  final RegistrationBloc _registrationBloc;

  void confirmationCodeChanged(String confirmationCodeStr) {
    final confirmationCode = ConfirmationCode.dirty(confirmationCodeStr);
    emit(
      state.copyWith(
        confirmationCode: confirmationCode.valid
            ? confirmationCode
            : ConfirmationCode.pure(confirmationCodeStr),
        status: Formz.validate([confirmationCode]),
      ),
    );
  }

  Future<void> confirmationCodeSubmitted() async {
    final confirmationCode =
        ConfirmationCode.dirty(state.confirmationCode.value);
    try {
      emit(
        state.copyWith(
          confirmationCode: confirmationCode,
          status: Formz.validate([confirmationCode]),
        ),
      );
      if (state.status.isValidated) {
        emit(state.copyWith(status: FormzStatus.submissionInProgress));
        await _iAuthFacade.confirmSignUp(
          username: _registrationBloc.state.username.value,
          confirmationCode: state.confirmationCode.value,
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
