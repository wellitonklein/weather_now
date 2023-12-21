// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CityState {
  String get searchField => throw _privateConstructorUsedError;
  List<CityEntity> get cities => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<String, String>> get failureOrSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityStateCopyWith<CityState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityStateCopyWith<$Res> {
  factory $CityStateCopyWith(CityState value, $Res Function(CityState) then) = _$CityStateCopyWithImpl<$Res, CityState>;
  @useResult
  $Res call(
      {String searchField, List<CityEntity> cities, bool isLoading, Option<Either<String, String>> failureOrSuccess});
}

/// @nodoc
class _$CityStateCopyWithImpl<$Res, $Val extends CityState> implements $CityStateCopyWith<$Res> {
  _$CityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchField = null,
    Object? cities = null,
    Object? isLoading = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      searchField: null == searchField
          ? _value.searchField
          : searchField // ignore: cast_nullable_to_non_nullable
              as String,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityStateImplCopyWith<$Res> implements $CityStateCopyWith<$Res> {
  factory _$$CityStateImplCopyWith(_$CityStateImpl value, $Res Function(_$CityStateImpl) then) =
      __$$CityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String searchField, List<CityEntity> cities, bool isLoading, Option<Either<String, String>> failureOrSuccess});
}

/// @nodoc
class __$$CityStateImplCopyWithImpl<$Res> extends _$CityStateCopyWithImpl<$Res, _$CityStateImpl>
    implements _$$CityStateImplCopyWith<$Res> {
  __$$CityStateImplCopyWithImpl(_$CityStateImpl _value, $Res Function(_$CityStateImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchField = null,
    Object? cities = null,
    Object? isLoading = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_$CityStateImpl(
      searchField: null == searchField
          ? _value.searchField
          : searchField // ignore: cast_nullable_to_non_nullable
              as String,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, String>>,
    ));
  }
}

/// @nodoc

class _$CityStateImpl extends _CityState {
  const _$CityStateImpl(
      {required this.searchField,
      required final List<CityEntity> cities,
      required this.isLoading,
      required this.failureOrSuccess})
      : _cities = cities,
        super._();

  @override
  final String searchField;
  final List<CityEntity> _cities;
  @override
  List<CityEntity> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  final bool isLoading;
  @override
  final Option<Either<String, String>> failureOrSuccess;

  @override
  String toString() {
    return 'CityState(searchField: $searchField, cities: $cities, isLoading: $isLoading, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityStateImpl &&
            (identical(other.searchField, searchField) || other.searchField == searchField) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            (identical(other.isLoading, isLoading) || other.isLoading == isLoading) &&
            (identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, searchField, const DeepCollectionEquality().hash(_cities), isLoading, failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityStateImplCopyWith<_$CityStateImpl> get copyWith =>
      __$$CityStateImplCopyWithImpl<_$CityStateImpl>(this, _$identity);
}

abstract class _CityState extends CityState {
  const factory _CityState(
      {required final String searchField,
      required final List<CityEntity> cities,
      required final bool isLoading,
      required final Option<Either<String, String>> failureOrSuccess}) = _$CityStateImpl;
  const _CityState._() : super._();

  @override
  String get searchField;
  @override
  List<CityEntity> get cities;
  @override
  bool get isLoading;
  @override
  Option<Either<String, String>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$CityStateImplCopyWith<_$CityStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) searchChanged,
    required TResult Function() searchCleaned,
    required TResult Function() searchConsulted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? searchChanged,
    TResult? Function()? searchCleaned,
    TResult? Function()? searchConsulted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? searchChanged,
    TResult Function()? searchCleaned,
    TResult Function()? searchConsulted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_SearchCleaned value) searchCleaned,
    required TResult Function(_SearchConsulted value) searchConsulted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_SearchCleaned value)? searchCleaned,
    TResult? Function(_SearchConsulted value)? searchConsulted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_SearchCleaned value)? searchCleaned,
    TResult Function(_SearchConsulted value)? searchConsulted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityEventCopyWith<$Res> {
  factory $CityEventCopyWith(CityEvent value, $Res Function(CityEvent) then) = _$CityEventCopyWithImpl<$Res, CityEvent>;
}

/// @nodoc
class _$CityEventCopyWithImpl<$Res, $Val extends CityEvent> implements $CityEventCopyWith<$Res> {
  _$CityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchChangedImplCopyWith<$Res> {
  factory _$$SearchChangedImplCopyWith(_$SearchChangedImpl value, $Res Function(_$SearchChangedImpl) then) =
      __$$SearchChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SearchChangedImplCopyWithImpl<$Res> extends _$CityEventCopyWithImpl<$Res, _$SearchChangedImpl>
    implements _$$SearchChangedImplCopyWith<$Res> {
  __$$SearchChangedImplCopyWithImpl(_$SearchChangedImpl _value, $Res Function(_$SearchChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SearchChangedImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchChangedImpl extends _SearchChanged {
  const _$SearchChangedImpl({required this.value}) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'CityEvent.searchChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith =>
      __$$SearchChangedImplCopyWithImpl<_$SearchChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) searchChanged,
    required TResult Function() searchCleaned,
    required TResult Function() searchConsulted,
  }) {
    return searchChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? searchChanged,
    TResult? Function()? searchCleaned,
    TResult? Function()? searchConsulted,
  }) {
    return searchChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? searchChanged,
    TResult Function()? searchCleaned,
    TResult Function()? searchConsulted,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_SearchCleaned value) searchCleaned,
    required TResult Function(_SearchConsulted value) searchConsulted,
  }) {
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_SearchCleaned value)? searchCleaned,
    TResult? Function(_SearchConsulted value)? searchConsulted,
  }) {
    return searchChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_SearchCleaned value)? searchCleaned,
    TResult Function(_SearchConsulted value)? searchConsulted,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchChanged extends CityEvent {
  const factory _SearchChanged({required final String value}) = _$SearchChangedImpl;
  const _SearchChanged._() : super._();

  String get value;
  @JsonKey(ignore: true)
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCleanedImplCopyWith<$Res> {
  factory _$$SearchCleanedImplCopyWith(_$SearchCleanedImpl value, $Res Function(_$SearchCleanedImpl) then) =
      __$$SearchCleanedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchCleanedImplCopyWithImpl<$Res> extends _$CityEventCopyWithImpl<$Res, _$SearchCleanedImpl>
    implements _$$SearchCleanedImplCopyWith<$Res> {
  __$$SearchCleanedImplCopyWithImpl(_$SearchCleanedImpl _value, $Res Function(_$SearchCleanedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchCleanedImpl extends _SearchCleaned {
  const _$SearchCleanedImpl() : super._();

  @override
  String toString() {
    return 'CityEvent.searchCleaned()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SearchCleanedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) searchChanged,
    required TResult Function() searchCleaned,
    required TResult Function() searchConsulted,
  }) {
    return searchCleaned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? searchChanged,
    TResult? Function()? searchCleaned,
    TResult? Function()? searchConsulted,
  }) {
    return searchCleaned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? searchChanged,
    TResult Function()? searchCleaned,
    TResult Function()? searchConsulted,
    required TResult orElse(),
  }) {
    if (searchCleaned != null) {
      return searchCleaned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_SearchCleaned value) searchCleaned,
    required TResult Function(_SearchConsulted value) searchConsulted,
  }) {
    return searchCleaned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_SearchCleaned value)? searchCleaned,
    TResult? Function(_SearchConsulted value)? searchConsulted,
  }) {
    return searchCleaned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_SearchCleaned value)? searchCleaned,
    TResult Function(_SearchConsulted value)? searchConsulted,
    required TResult orElse(),
  }) {
    if (searchCleaned != null) {
      return searchCleaned(this);
    }
    return orElse();
  }
}

abstract class _SearchCleaned extends CityEvent {
  const factory _SearchCleaned() = _$SearchCleanedImpl;
  const _SearchCleaned._() : super._();
}

/// @nodoc
abstract class _$$SearchConsultedImplCopyWith<$Res> {
  factory _$$SearchConsultedImplCopyWith(_$SearchConsultedImpl value, $Res Function(_$SearchConsultedImpl) then) =
      __$$SearchConsultedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchConsultedImplCopyWithImpl<$Res> extends _$CityEventCopyWithImpl<$Res, _$SearchConsultedImpl>
    implements _$$SearchConsultedImplCopyWith<$Res> {
  __$$SearchConsultedImplCopyWithImpl(_$SearchConsultedImpl _value, $Res Function(_$SearchConsultedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchConsultedImpl extends _SearchConsulted {
  const _$SearchConsultedImpl() : super._();

  @override
  String toString() {
    return 'CityEvent.searchConsulted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SearchConsultedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) searchChanged,
    required TResult Function() searchCleaned,
    required TResult Function() searchConsulted,
  }) {
    return searchConsulted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? searchChanged,
    TResult? Function()? searchCleaned,
    TResult? Function()? searchConsulted,
  }) {
    return searchConsulted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? searchChanged,
    TResult Function()? searchCleaned,
    TResult Function()? searchConsulted,
    required TResult orElse(),
  }) {
    if (searchConsulted != null) {
      return searchConsulted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_SearchCleaned value) searchCleaned,
    required TResult Function(_SearchConsulted value) searchConsulted,
  }) {
    return searchConsulted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_SearchCleaned value)? searchCleaned,
    TResult? Function(_SearchConsulted value)? searchConsulted,
  }) {
    return searchConsulted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_SearchCleaned value)? searchCleaned,
    TResult Function(_SearchConsulted value)? searchConsulted,
    required TResult orElse(),
  }) {
    if (searchConsulted != null) {
      return searchConsulted(this);
    }
    return orElse();
  }
}

abstract class _SearchConsulted extends CityEvent {
  const factory _SearchConsulted() = _$SearchConsultedImpl;
  const _SearchConsulted._() : super._();
}
