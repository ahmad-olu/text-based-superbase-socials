part of 'walk_in_form_cubit.dart';

@freezed
class WalkInFormState with _$WalkInFormState {
  const factory WalkInFormState({
    required Username2Input username,
    required Password password,
    required FormzStatus status,
    required AuthFailure failure,
  }) = _WalkInFormState;
  factory WalkInFormState.initial() => WalkInFormState(
        username: Username2Input.pure(),
        password: Password.pure(),
        status: FormzStatus.pure,
        failure: const AuthFailure(),
      );
}
