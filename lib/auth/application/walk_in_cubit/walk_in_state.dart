part of 'walk_in_cubit.dart';

@freezed
class WalkInState with _$WalkInState {
  const factory WalkInState({
    required Email email,
    required Password password,
    required FormzStatus status,
    required Exception? failure,
  }) = _WalkInState;
  factory WalkInState.initial() => WalkInState(
        email: Email.pure(),
        password: Password.pure(),
        status: FormzStatus.pure,
        failure: null,
      );
}
