import 'package:cubtale_challenge/domain/core/failures.dart';
import 'package:cubtale_challenge/domain/core/value_objects.dart';
import 'package:cubtale_challenge/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    return Username._(validateUsername(input));
  }

  const Username._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validateLoginPassword(input),
    );
  }

  const Password._(this.value);
}
