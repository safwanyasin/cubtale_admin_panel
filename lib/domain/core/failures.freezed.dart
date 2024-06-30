// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, T otherValue) passwordMismatch,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, T otherValue)? passwordMismatch,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, T otherValue)? passwordMismatch,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordMismatch<T> value) passwordMismatch,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidValue<T> value) invalidValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordMismatch<T> value)? passwordMismatch,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidValue<T> value)? invalidValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordMismatch<T> value)? passwordMismatch,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidValue<T> value)? invalidValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordMismatchImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$PasswordMismatchImplCopyWith(_$PasswordMismatchImpl<T> value,
          $Res Function(_$PasswordMismatchImpl<T>) then) =
      __$$PasswordMismatchImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, T otherValue});
}

/// @nodoc
class __$$PasswordMismatchImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$PasswordMismatchImpl<T>>
    implements _$$PasswordMismatchImplCopyWith<T, $Res> {
  __$$PasswordMismatchImplCopyWithImpl(_$PasswordMismatchImpl<T> _value,
      $Res Function(_$PasswordMismatchImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? otherValue = freezed,
  }) {
    return _then(_$PasswordMismatchImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      otherValue: freezed == otherValue
          ? _value.otherValue
          : otherValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PasswordMismatchImpl<T>
    with DiagnosticableTreeMixin
    implements PasswordMismatch<T> {
  const _$PasswordMismatchImpl(
      {required this.failedValue, required this.otherValue});

  @override
  final T failedValue;
  @override
  final T otherValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.passwordMismatch(failedValue: $failedValue, otherValue: $otherValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.passwordMismatch'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('otherValue', otherValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordMismatchImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality()
                .equals(other.otherValue, otherValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(otherValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordMismatchImplCopyWith<T, _$PasswordMismatchImpl<T>> get copyWith =>
      __$$PasswordMismatchImplCopyWithImpl<T, _$PasswordMismatchImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, T otherValue) passwordMismatch,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidValue,
  }) {
    return passwordMismatch(failedValue, otherValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, T otherValue)? passwordMismatch,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidValue,
  }) {
    return passwordMismatch?.call(failedValue, otherValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, T otherValue)? passwordMismatch,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidValue,
    required TResult orElse(),
  }) {
    if (passwordMismatch != null) {
      return passwordMismatch(failedValue, otherValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordMismatch<T> value) passwordMismatch,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidValue<T> value) invalidValue,
  }) {
    return passwordMismatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordMismatch<T> value)? passwordMismatch,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidValue<T> value)? invalidValue,
  }) {
    return passwordMismatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordMismatch<T> value)? passwordMismatch,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidValue<T> value)? invalidValue,
    required TResult orElse(),
  }) {
    if (passwordMismatch != null) {
      return passwordMismatch(this);
    }
    return orElse();
  }
}

abstract class PasswordMismatch<T> implements ValueFailure<T> {
  const factory PasswordMismatch(
      {required final T failedValue,
      required final T otherValue}) = _$PasswordMismatchImpl<T>;

  @override
  T get failedValue;
  T get otherValue;
  @override
  @JsonKey(ignore: true)
  _$$PasswordMismatchImplCopyWith<T, _$PasswordMismatchImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl<T> value, $Res Function(_$EmptyImpl<T>) then) =
      __$$EmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyImpl<T>>
    implements _$$EmptyImplCopyWith<T, $Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl<T> _value, $Res Function(_$EmptyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$EmptyImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyImpl<T> with DiagnosticableTreeMixin implements Empty<T> {
  const _$EmptyImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.empty'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      __$$EmptyImplCopyWithImpl<T, _$EmptyImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, T otherValue) passwordMismatch,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidValue,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, T otherValue)? passwordMismatch,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidValue,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, T otherValue)? passwordMismatch,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidValue,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordMismatch<T> value) passwordMismatch,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidValue<T> value) invalidValue,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordMismatch<T> value)? passwordMismatch,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidValue<T> value)? invalidValue,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordMismatch<T> value)? passwordMismatch,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidValue<T> value)? invalidValue,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T failedValue}) = _$EmptyImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidValueImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidValueImplCopyWith(_$InvalidValueImpl<T> value,
          $Res Function(_$InvalidValueImpl<T>) then) =
      __$$InvalidValueImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidValueImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidValueImpl<T>>
    implements _$$InvalidValueImplCopyWith<T, $Res> {
  __$$InvalidValueImplCopyWithImpl(
      _$InvalidValueImpl<T> _value, $Res Function(_$InvalidValueImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidValueImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidValueImpl<T>
    with DiagnosticableTreeMixin
    implements InvalidValue<T> {
  const _$InvalidValueImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidValue(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidValue'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidValueImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidValueImplCopyWith<T, _$InvalidValueImpl<T>> get copyWith =>
      __$$InvalidValueImplCopyWithImpl<T, _$InvalidValueImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, T otherValue) passwordMismatch,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidValue,
  }) {
    return invalidValue(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, T otherValue)? passwordMismatch,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidValue,
  }) {
    return invalidValue?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, T otherValue)? passwordMismatch,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidValue,
    required TResult orElse(),
  }) {
    if (invalidValue != null) {
      return invalidValue(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordMismatch<T> value) passwordMismatch,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidValue<T> value) invalidValue,
  }) {
    return invalidValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordMismatch<T> value)? passwordMismatch,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidValue<T> value)? invalidValue,
  }) {
    return invalidValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordMismatch<T> value)? passwordMismatch,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidValue<T> value)? invalidValue,
    required TResult orElse(),
  }) {
    if (invalidValue != null) {
      return invalidValue(this);
    }
    return orElse();
  }
}

abstract class InvalidValue<T> implements ValueFailure<T> {
  const factory InvalidValue({required final T failedValue}) =
      _$InvalidValueImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidValueImplCopyWith<T, _$InvalidValueImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
