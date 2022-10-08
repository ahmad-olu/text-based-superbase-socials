part of 'username_check_bloc.dart';

enum UsernameCheckStatus { editing, submitting, failed, succeeded }

@freezed
class UsernameCheckState with _$UsernameCheckState {
  const factory UsernameCheckState({
    required UsernameInput username,
    required bool isCheckingUsername,
    required UsernameCheckStatus status,
  }) = _UsernameCheckState;
  factory UsernameCheckState.initial() => const _UsernameCheckState(
        username: UsernameInput.pure(),
        isCheckingUsername: false,
        status: UsernameCheckStatus.editing,
      );
}
