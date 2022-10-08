import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/core/domain/geat_failure.dart';
import 'package:geat/profile/domain/user_model.dart';
import 'package:geat/profile/infrastructure/user_repository.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  final UserRepository _userRepository;
  SearchCubit(this._userRepository) : super(SearchState.initial());
  Future<void> searchUsers(String query) async {
    emit(state.copyWith(status: SearchStatus.loading));
    try {
      final users = await _userRepository.searchUsers(query: query);
      emit(state.copyWith(user: users, status: SearchStatus.loaded));
    } on Exception catch (e) {
      emit(
        state.copyWith(
          status: SearchStatus.error,
          failure: e,
        ),
      );
    }
  }

  void clearSearch() {
    emit(state.copyWith(user: [], status: SearchStatus.initial));
  }
}
