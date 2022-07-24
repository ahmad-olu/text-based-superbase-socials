import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/core/core.dart';
import 'package:geat/profile/profile.dart';
import 'package:injectable/injectable.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  final IUserRepository _iUserRepository;
  SearchCubit(this._iUserRepository) : super(SearchState.initial());
  Future<void> searchUsers(String query) async {
    emit(state.copyWith(status: SearchStatus.loading));
    try {
      final users = await _iUserRepository.searchUsers(query: query);
      emit(state.copyWith(user: users, status: SearchStatus.loaded));
    } catch (e) {
      emit(
        state.copyWith(
          status: SearchStatus.error,
          failure: const GeatFailure(),
        ),
      );
    }
  }

  void clearSearch() {
    emit(state.copyWith(user: [], status: SearchStatus.initial));
  }
}
