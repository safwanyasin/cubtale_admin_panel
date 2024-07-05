import 'package:cubtale_challenge/domain/core/failures.dart';
import 'package:cubtale_challenge/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';

class SearchTerm extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SearchTerm(String input) {
    return SearchTerm._(
      right(input), // validator
    );
  }

  const SearchTerm._(this.value);
}
