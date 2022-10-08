part of 'search_cubit.dart';

enum SearchStatus { initial, loading, loaded, error }

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<User> user,
    required SearchStatus status,
    required Exception? failure,
  }) = _SearchState;
  factory SearchState.initial() => const _SearchState(
        user: [],
        status: SearchStatus.initial,
        failure: null,
      );
}
