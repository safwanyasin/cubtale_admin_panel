import 'package:cubtale_challenge/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateLoginPassword(String input) {
  if (input.isEmpty) {
    return left(ValueFailure<String>.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input.isEmpty) {
    return left(ValueFailure<String>.empty(failedValue: input));
  } else {
    return right(input);
  }
}
