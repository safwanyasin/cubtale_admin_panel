// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() invalidUsernameAndPasswordCombination,
    required TResult Function(String failureMessage) otherFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? invalidUsernameAndPasswordCombination,
    TResult? Function(String failureMessage)? otherFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? invalidUsernameAndPasswordCombination,
    TResult Function(String failureMessage)? otherFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidUsernameAndPasswordCombination value)
        invalidUsernameAndPasswordCombination,
    required TResult Function(OtherFailure value) otherFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InvalidUsernameAndPasswordCombination value)?
        invalidUsernameAndPasswordCombination,
    TResult? Function(OtherFailure value)? otherFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidUsernameAndPasswordCombination value)?
        invalidUsernameAndPasswordCombination,
    TResult Function(OtherFailure value)? otherFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFailureCopyWith<$Res> {
  factory $LoginFailureCopyWith(
          LoginFailure value, $Res Function(LoginFailure) then) =
      _$LoginFailureCopyWithImpl<$Res, LoginFailure>;
}

/// @nodoc
class _$LoginFailureCopyWithImpl<$Res, $Val extends LoginFailure>
    implements $LoginFailureCopyWith<$Res> {
  _$LoginFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CancelledByUserImplCopyWith<$Res> {
  factory _$$CancelledByUserImplCopyWith(_$CancelledByUserImpl value,
          $Res Function(_$CancelledByUserImpl) then) =
      __$$CancelledByUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledByUserImplCopyWithImpl<$Res>
    extends _$LoginFailureCopyWithImpl<$Res, _$CancelledByUserImpl>
    implements _$$CancelledByUserImplCopyWith<$Res> {
  __$$CancelledByUserImplCopyWithImpl(
      _$CancelledByUserImpl _value, $Res Function(_$CancelledByUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelledByUserImpl
    with DiagnosticableTreeMixin
    implements CancelledByUser {
  const _$CancelledByUserImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginFailure.cancelledByUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginFailure.cancelledByUser'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledByUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() invalidUsernameAndPasswordCombination,
    required TResult Function(String failureMessage) otherFailure,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? invalidUsernameAndPasswordCombination,
    TResult? Function(String failureMessage)? otherFailure,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? invalidUsernameAndPasswordCombination,
    TResult Function(String failureMessage)? otherFailure,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidUsernameAndPasswordCombination value)
        invalidUsernameAndPasswordCombination,
    required TResult Function(OtherFailure value) otherFailure,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InvalidUsernameAndPasswordCombination value)?
        invalidUsernameAndPasswordCombination,
    TResult? Function(OtherFailure value)? otherFailure,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidUsernameAndPasswordCombination value)?
        invalidUsernameAndPasswordCombination,
    TResult Function(OtherFailure value)? otherFailure,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements LoginFailure {
  const factory CancelledByUser() = _$CancelledByUserImpl;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$LoginFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerErrorImpl with DiagnosticableTreeMixin implements ServerError {
  const _$ServerErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginFailure.serverError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginFailure.serverError'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() invalidUsernameAndPasswordCombination,
    required TResult Function(String failureMessage) otherFailure,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? invalidUsernameAndPasswordCombination,
    TResult? Function(String failureMessage)? otherFailure,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? invalidUsernameAndPasswordCombination,
    TResult Function(String failureMessage)? otherFailure,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidUsernameAndPasswordCombination value)
        invalidUsernameAndPasswordCombination,
    required TResult Function(OtherFailure value) otherFailure,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InvalidUsernameAndPasswordCombination value)?
        invalidUsernameAndPasswordCombination,
    TResult? Function(OtherFailure value)? otherFailure,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidUsernameAndPasswordCombination value)?
        invalidUsernameAndPasswordCombination,
    TResult Function(OtherFailure value)? otherFailure,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements LoginFailure {
  const factory ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$InvalidUsernameAndPasswordCombinationImplCopyWith<$Res> {
  factory _$$InvalidUsernameAndPasswordCombinationImplCopyWith(
          _$InvalidUsernameAndPasswordCombinationImpl value,
          $Res Function(_$InvalidUsernameAndPasswordCombinationImpl) then) =
      __$$InvalidUsernameAndPasswordCombinationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidUsernameAndPasswordCombinationImplCopyWithImpl<$Res>
    extends _$LoginFailureCopyWithImpl<$Res,
        _$InvalidUsernameAndPasswordCombinationImpl>
    implements _$$InvalidUsernameAndPasswordCombinationImplCopyWith<$Res> {
  __$$InvalidUsernameAndPasswordCombinationImplCopyWithImpl(
      _$InvalidUsernameAndPasswordCombinationImpl _value,
      $Res Function(_$InvalidUsernameAndPasswordCombinationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidUsernameAndPasswordCombinationImpl
    with DiagnosticableTreeMixin
    implements InvalidUsernameAndPasswordCombination {
  const _$InvalidUsernameAndPasswordCombinationImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginFailure.invalidUsernameAndPasswordCombination()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'LoginFailure.invalidUsernameAndPasswordCombination'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidUsernameAndPasswordCombinationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() invalidUsernameAndPasswordCombination,
    required TResult Function(String failureMessage) otherFailure,
  }) {
    return invalidUsernameAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? invalidUsernameAndPasswordCombination,
    TResult? Function(String failureMessage)? otherFailure,
  }) {
    return invalidUsernameAndPasswordCombination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? invalidUsernameAndPasswordCombination,
    TResult Function(String failureMessage)? otherFailure,
    required TResult orElse(),
  }) {
    if (invalidUsernameAndPasswordCombination != null) {
      return invalidUsernameAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidUsernameAndPasswordCombination value)
        invalidUsernameAndPasswordCombination,
    required TResult Function(OtherFailure value) otherFailure,
  }) {
    return invalidUsernameAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InvalidUsernameAndPasswordCombination value)?
        invalidUsernameAndPasswordCombination,
    TResult? Function(OtherFailure value)? otherFailure,
  }) {
    return invalidUsernameAndPasswordCombination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidUsernameAndPasswordCombination value)?
        invalidUsernameAndPasswordCombination,
    TResult Function(OtherFailure value)? otherFailure,
    required TResult orElse(),
  }) {
    if (invalidUsernameAndPasswordCombination != null) {
      return invalidUsernameAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidUsernameAndPasswordCombination implements LoginFailure {
  const factory InvalidUsernameAndPasswordCombination() =
      _$InvalidUsernameAndPasswordCombinationImpl;
}

/// @nodoc
abstract class _$$OtherFailureImplCopyWith<$Res> {
  factory _$$OtherFailureImplCopyWith(
          _$OtherFailureImpl value, $Res Function(_$OtherFailureImpl) then) =
      __$$OtherFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$$OtherFailureImplCopyWithImpl<$Res>
    extends _$LoginFailureCopyWithImpl<$Res, _$OtherFailureImpl>
    implements _$$OtherFailureImplCopyWith<$Res> {
  __$$OtherFailureImplCopyWithImpl(
      _$OtherFailureImpl _value, $Res Function(_$OtherFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_$OtherFailureImpl(
      null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtherFailureImpl with DiagnosticableTreeMixin implements OtherFailure {
  const _$OtherFailureImpl(this.failureMessage);

  @override
  final String failureMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginFailure.otherFailure(failureMessage: $failureMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginFailure.otherFailure'))
      ..add(DiagnosticsProperty('failureMessage', failureMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherFailureImpl &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherFailureImplCopyWith<_$OtherFailureImpl> get copyWith =>
      __$$OtherFailureImplCopyWithImpl<_$OtherFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() invalidUsernameAndPasswordCombination,
    required TResult Function(String failureMessage) otherFailure,
  }) {
    return otherFailure(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? invalidUsernameAndPasswordCombination,
    TResult? Function(String failureMessage)? otherFailure,
  }) {
    return otherFailure?.call(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? invalidUsernameAndPasswordCombination,
    TResult Function(String failureMessage)? otherFailure,
    required TResult orElse(),
  }) {
    if (otherFailure != null) {
      return otherFailure(failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidUsernameAndPasswordCombination value)
        invalidUsernameAndPasswordCombination,
    required TResult Function(OtherFailure value) otherFailure,
  }) {
    return otherFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InvalidUsernameAndPasswordCombination value)?
        invalidUsernameAndPasswordCombination,
    TResult? Function(OtherFailure value)? otherFailure,
  }) {
    return otherFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidUsernameAndPasswordCombination value)?
        invalidUsernameAndPasswordCombination,
    TResult Function(OtherFailure value)? otherFailure,
    required TResult orElse(),
  }) {
    if (otherFailure != null) {
      return otherFailure(this);
    }
    return orElse();
  }
}

abstract class OtherFailure implements LoginFailure {
  const factory OtherFailure(final String failureMessage) = _$OtherFailureImpl;

  String get failureMessage;
  @JsonKey(ignore: true)
  _$$OtherFailureImplCopyWith<_$OtherFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
