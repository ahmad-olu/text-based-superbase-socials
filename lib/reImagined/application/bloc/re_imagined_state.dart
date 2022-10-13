part of 're_imagined_bloc.dart';

enum ReImaginedStatus { initial, loading, loaded, submitting, error }

@freezed
class ReImaginedState with _$ReImaginedState {
  const factory ReImaginedState({
    required Post? post,
    required List<ReImagined?> reImagined,
    required ReImaginedStatus status,
    required Exception? failure,
  }) = _ReImaginedState;
  factory ReImaginedState.initial() => const _ReImaginedState(
        post: null,
        reImagined: [],
        status: ReImaginedStatus.initial,
        failure: null,
      );
}
