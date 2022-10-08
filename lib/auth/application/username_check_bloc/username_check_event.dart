part of 'username_check_bloc.dart';

@freezed
class UsernameCheckEvent with _$UsernameCheckEvent {
  const factory UsernameCheckEvent.userChanged({required String username}) =
      _UserChanged;
  const factory UsernameCheckEvent.submit() = _Submit;
}
