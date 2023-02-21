import 'package:geat/app/repository/repository.dart';
import 'package:geat/auth/provider/auth_state_notifier.dart';
import 'package:geat/auth/provider/sign_up_state_notifier.dart';
import 'package:geat/auth/provider/walk_in_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final walkInStateProvider =
    StateNotifierProvider<WalkInNotifier, WalkInState>((ref) {
  return WalkInNotifier();
});

final signUpStateProvider =
    StateNotifierProvider<SignUpNotifier, SignUpState>((ref) {
  return SignUpNotifier();
});

final authUpStateProvider =
    StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authRepo = ref.watch(authRepositoryProvider);
  return AuthNotifier(authRepo);
});
