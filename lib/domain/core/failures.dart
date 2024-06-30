import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.passwordMismatch(
      {required T failedValue, required T otherValue
      // @required T failedValue,
      }) = PasswordMismatch<T>;

  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.invalidValue({
    required T failedValue,
    // @required T failedValue,
  }) = InvalidValue<T>;
}
