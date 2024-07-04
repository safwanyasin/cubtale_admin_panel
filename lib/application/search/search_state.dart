
part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required SearchTerm searchTerm,
    required bool isSubmitting,
    required Option<Either<SearchFailure, dynamic>> searchFailureOrSuccessOption,
  }) = _SearchState;

  const SearchState._();

  factory SearchState.initial() => SearchState(
        searchTerm: SearchTerm(''),
        isSubmitting: false,
        searchFailureOrSuccessOption: none(),
      );
}