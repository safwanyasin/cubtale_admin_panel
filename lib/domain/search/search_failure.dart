import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'search_failure.freezed.dart';

@freezed
abstract class SearchFailure with _$SearchFailure {
  const factory SearchFailure.unexpected() = Unexcpected;
  // Serves as a "catch all" failure if we don't know what exactly went wrong
  const factory SearchFailure.unableToUpdate() = UnableToUpdate;
  // const factory AiGenerateFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory SearchFailure.insufficientPermissions() =
      InsufficientPermissions;
  const factory SearchFailure.otherFailure(String failureMessage) = OtherFailure;
}
