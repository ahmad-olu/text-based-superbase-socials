part of 're_imagined_bloc.dart';

@freezed
class ReImaginedEvent with _$ReImaginedEvent {
  const factory ReImaginedEvent.fetchReImagined({required Post post}) =
      _FetchReImagined;
  const factory ReImaginedEvent.updateReImagined({
    required List<ReImagined?> reImagined,
  }) = _UpdateReImagined;
  const factory ReImaginedEvent.postReImagined({required String content}) =
      _PostReImagined;
  const factory ReImaginedEvent.postReset() = _PostReset;
}
