// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  SearchTerm get searchTerm => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<SearchFailure, dynamic>> get searchFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {SearchTerm searchTerm,
      bool isSubmitting,
      Option<Either<SearchFailure, dynamic>> searchFailureOrSuccessOption});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = null,
    Object? isSubmitting = null,
    Object? searchFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as SearchTerm,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      searchFailureOrSuccessOption: null == searchFailureOrSuccessOption
          ? _value.searchFailureOrSuccessOption
          : searchFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SearchFailure, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchTerm searchTerm,
      bool isSubmitting,
      Option<Either<SearchFailure, dynamic>> searchFailureOrSuccessOption});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = null,
    Object? isSubmitting = null,
    Object? searchFailureOrSuccessOption = null,
  }) {
    return _then(_$SearchStateImpl(
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as SearchTerm,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      searchFailureOrSuccessOption: null == searchFailureOrSuccessOption
          ? _value.searchFailureOrSuccessOption
          : searchFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SearchFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl extends _SearchState {
  const _$SearchStateImpl(
      {required this.searchTerm,
      required this.isSubmitting,
      required this.searchFailureOrSuccessOption})
      : super._();

  @override
  final SearchTerm searchTerm;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<SearchFailure, dynamic>> searchFailureOrSuccessOption;

  @override
  String toString() {
    return 'SearchState(searchTerm: $searchTerm, isSubmitting: $isSubmitting, searchFailureOrSuccessOption: $searchFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.searchFailureOrSuccessOption,
                    searchFailureOrSuccessOption) ||
                other.searchFailureOrSuccessOption ==
                    searchFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, searchTerm, isSubmitting, searchFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState extends SearchState {
  const factory _SearchState(
      {required final SearchTerm searchTerm,
      required final bool isSubmitting,
      required final Option<Either<SearchFailure, dynamic>>
          searchFailureOrSuccessOption}) = _$SearchStateImpl;
  const _SearchState._() : super._();

  @override
  SearchTerm get searchTerm;
  @override
  bool get isSubmitting;
  @override
  Option<Either<SearchFailure, dynamic>> get searchFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
