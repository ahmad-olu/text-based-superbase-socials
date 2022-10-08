part of 're_imagined_bloc.dart';

enum ReImaginedStatus { initial, loading, loaded, submitting, error }

@freezed
class ReImaginedState with _$ReImaginedState {
  const factory ReImaginedState({
    required TextPost? textPost,
    required List<ReImagined?> reImagined,
    required ReImaginedStatus status,
    required Exception? failure,
  }) = _ReImaginedState;
  factory ReImaginedState.initial() => const _ReImaginedState(
        textPost: null,
        reImagined: [],
        status: ReImaginedStatus.initial,
        failure: null,
      );
}
