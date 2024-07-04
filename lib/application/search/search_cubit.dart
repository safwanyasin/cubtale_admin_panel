import 'package:cubtale_challenge/domain/search/i_search_repository.dart';
import 'package:cubtale_challenge/domain/search/search_failure.dart';
import 'package:cubtale_challenge/domain/search/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:book_ai/application/auth/login/login_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  final ISearchRepository _searchRepository;
  SearchCubit(this._searchRepository) : super(SearchState.initial());

  void updateSearchTerm(String typedSearchTerm) {
    emit(state.copyWith(
      searchTerm: SearchTerm(typedSearchTerm),
      searchFailureOrSuccessOption: none(),
    ));
  }

  void reset() {
    emit(SearchState.initial());
  }

  Future<void> search(String type) async {
    emit(
      state.copyWith(
        isSubmitting: true,
      ),
    );

    // do the remaining stuff
    String searchTerm = state.searchTerm.getOrCrash();
    final possibleFailure;
    if (type == 'Mail') {
      possibleFailure = await _searchRepository.findByMail(searchTerm);
      print(possibleFailure);
    } else if (type == 'ID') {
      possibleFailure = await _searchRepository.findByID(searchTerm);
      print(possibleFailure);
    } else {
      possibleFailure = await _searchRepository.findByDate(searchTerm);
      print(possibleFailure);
    }
  }
}
