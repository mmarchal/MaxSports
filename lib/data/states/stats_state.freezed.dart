// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stats_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StatsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWeightsLoading,
    required TResult Function(List<Poids> poids) getWeightsLoaded,
    required TResult Function(APIError? error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWeightsLoading,
    TResult Function(List<Poids> poids)? getWeightsLoaded,
    TResult Function(APIError? error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWeightsLoading,
    TResult Function(List<Poids> poids)? getWeightsLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatsStateInitial value) initial,
    required TResult Function(StatsStateGetWeightsLoading value)
        getWeightsLoading,
    required TResult Function(StatsStateGetWeightsLoaded value)
        getWeightsLoaded,
    required TResult Function(StatsStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatsStateInitial value)? initial,
    TResult Function(StatsStateGetWeightsLoading value)? getWeightsLoading,
    TResult Function(StatsStateGetWeightsLoaded value)? getWeightsLoaded,
    TResult Function(StatsStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsStateInitial value)? initial,
    TResult Function(StatsStateGetWeightsLoading value)? getWeightsLoading,
    TResult Function(StatsStateGetWeightsLoaded value)? getWeightsLoaded,
    TResult Function(StatsStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsStateCopyWith<$Res> {
  factory $StatsStateCopyWith(
          StatsState value, $Res Function(StatsState) then) =
      _$StatsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatsStateCopyWithImpl<$Res> implements $StatsStateCopyWith<$Res> {
  _$StatsStateCopyWithImpl(this._value, this._then);

  final StatsState _value;
  // ignore: unused_field
  final $Res Function(StatsState) _then;
}

/// @nodoc
abstract class _$$StatsStateInitialCopyWith<$Res> {
  factory _$$StatsStateInitialCopyWith(
          _$StatsStateInitial value, $Res Function(_$StatsStateInitial) then) =
      __$$StatsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatsStateInitialCopyWithImpl<$Res>
    extends _$StatsStateCopyWithImpl<$Res>
    implements _$$StatsStateInitialCopyWith<$Res> {
  __$$StatsStateInitialCopyWithImpl(
      _$StatsStateInitial _value, $Res Function(_$StatsStateInitial) _then)
      : super(_value, (v) => _then(v as _$StatsStateInitial));

  @override
  _$StatsStateInitial get _value => super._value as _$StatsStateInitial;
}

/// @nodoc

class _$StatsStateInitial extends StatsStateInitial {
  _$StatsStateInitial() : super._();

  @override
  String toString() {
    return 'StatsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWeightsLoading,
    required TResult Function(List<Poids> poids) getWeightsLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWeightsLoading,
    TResult Function(List<Poids> poids)? getWeightsLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWeightsLoading,
    TResult Function(List<Poids> poids)? getWeightsLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatsStateInitial value) initial,
    required TResult Function(StatsStateGetWeightsLoading value)
        getWeightsLoading,
    required TResult Function(StatsStateGetWeightsLoaded value)
        getWeightsLoaded,
    required TResult Function(StatsStateFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatsStateInitial value)? initial,
    TResult Function(StatsStateGetWeightsLoading value)? getWeightsLoading,
    TResult Function(StatsStateGetWeightsLoaded value)? getWeightsLoaded,
    TResult Function(StatsStateFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsStateInitial value)? initial,
    TResult Function(StatsStateGetWeightsLoading value)? getWeightsLoading,
    TResult Function(StatsStateGetWeightsLoaded value)? getWeightsLoaded,
    TResult Function(StatsStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StatsStateInitial extends StatsState {
  factory StatsStateInitial() = _$StatsStateInitial;
  StatsStateInitial._() : super._();
}

/// @nodoc
abstract class _$$StatsStateGetWeightsLoadingCopyWith<$Res> {
  factory _$$StatsStateGetWeightsLoadingCopyWith(
          _$StatsStateGetWeightsLoading value,
          $Res Function(_$StatsStateGetWeightsLoading) then) =
      __$$StatsStateGetWeightsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatsStateGetWeightsLoadingCopyWithImpl<$Res>
    extends _$StatsStateCopyWithImpl<$Res>
    implements _$$StatsStateGetWeightsLoadingCopyWith<$Res> {
  __$$StatsStateGetWeightsLoadingCopyWithImpl(
      _$StatsStateGetWeightsLoading _value,
      $Res Function(_$StatsStateGetWeightsLoading) _then)
      : super(_value, (v) => _then(v as _$StatsStateGetWeightsLoading));

  @override
  _$StatsStateGetWeightsLoading get _value =>
      super._value as _$StatsStateGetWeightsLoading;
}

/// @nodoc

class _$StatsStateGetWeightsLoading extends StatsStateGetWeightsLoading {
  _$StatsStateGetWeightsLoading() : super._();

  @override
  String toString() {
    return 'StatsState.getWeightsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsStateGetWeightsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWeightsLoading,
    required TResult Function(List<Poids> poids) getWeightsLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return getWeightsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWeightsLoading,
    TResult Function(List<Poids> poids)? getWeightsLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return getWeightsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWeightsLoading,
    TResult Function(List<Poids> poids)? getWeightsLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) {
    if (getWeightsLoading != null) {
      return getWeightsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatsStateInitial value) initial,
    required TResult Function(StatsStateGetWeightsLoading value)
        getWeightsLoading,
    required TResult Function(StatsStateGetWeightsLoaded value)
        getWeightsLoaded,
    required TResult Function(StatsStateFailed value) failed,
  }) {
    return getWeightsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatsStateInitial value)? initial,
    TResult Function(StatsStateGetWeightsLoading value)? getWeightsLoading,
    TResult Function(StatsStateGetWeightsLoaded value)? getWeightsLoaded,
    TResult Function(StatsStateFailed value)? failed,
  }) {
    return getWeightsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsStateInitial value)? initial,
    TResult Function(StatsStateGetWeightsLoading value)? getWeightsLoading,
    TResult Function(StatsStateGetWeightsLoaded value)? getWeightsLoaded,
    TResult Function(StatsStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (getWeightsLoading != null) {
      return getWeightsLoading(this);
    }
    return orElse();
  }
}

abstract class StatsStateGetWeightsLoading extends StatsState {
  factory StatsStateGetWeightsLoading() = _$StatsStateGetWeightsLoading;
  StatsStateGetWeightsLoading._() : super._();
}

/// @nodoc
abstract class _$$StatsStateGetWeightsLoadedCopyWith<$Res> {
  factory _$$StatsStateGetWeightsLoadedCopyWith(
          _$StatsStateGetWeightsLoaded value,
          $Res Function(_$StatsStateGetWeightsLoaded) then) =
      __$$StatsStateGetWeightsLoadedCopyWithImpl<$Res>;
  $Res call({List<Poids> poids});
}

/// @nodoc
class __$$StatsStateGetWeightsLoadedCopyWithImpl<$Res>
    extends _$StatsStateCopyWithImpl<$Res>
    implements _$$StatsStateGetWeightsLoadedCopyWith<$Res> {
  __$$StatsStateGetWeightsLoadedCopyWithImpl(
      _$StatsStateGetWeightsLoaded _value,
      $Res Function(_$StatsStateGetWeightsLoaded) _then)
      : super(_value, (v) => _then(v as _$StatsStateGetWeightsLoaded));

  @override
  _$StatsStateGetWeightsLoaded get _value =>
      super._value as _$StatsStateGetWeightsLoaded;

  @override
  $Res call({
    Object? poids = freezed,
  }) {
    return _then(_$StatsStateGetWeightsLoaded(
      poids: poids == freezed
          ? _value.poids
          : poids // ignore: cast_nullable_to_non_nullable
              as List<Poids>,
    ));
  }
}

/// @nodoc

class _$StatsStateGetWeightsLoaded extends StatsStateGetWeightsLoaded {
  _$StatsStateGetWeightsLoaded({required this.poids}) : super._();

  @override
  final List<Poids> poids;

  @override
  String toString() {
    return 'StatsState.getWeightsLoaded(poids: $poids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsStateGetWeightsLoaded &&
            const DeepCollectionEquality().equals(other.poids, poids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(poids));

  @JsonKey(ignore: true)
  @override
  _$$StatsStateGetWeightsLoadedCopyWith<_$StatsStateGetWeightsLoaded>
      get copyWith => __$$StatsStateGetWeightsLoadedCopyWithImpl<
          _$StatsStateGetWeightsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWeightsLoading,
    required TResult Function(List<Poids> poids) getWeightsLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return getWeightsLoaded(poids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWeightsLoading,
    TResult Function(List<Poids> poids)? getWeightsLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return getWeightsLoaded?.call(poids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWeightsLoading,
    TResult Function(List<Poids> poids)? getWeightsLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) {
    if (getWeightsLoaded != null) {
      return getWeightsLoaded(poids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatsStateInitial value) initial,
    required TResult Function(StatsStateGetWeightsLoading value)
        getWeightsLoading,
    required TResult Function(StatsStateGetWeightsLoaded value)
        getWeightsLoaded,
    required TResult Function(StatsStateFailed value) failed,
  }) {
    return getWeightsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatsStateInitial value)? initial,
    TResult Function(StatsStateGetWeightsLoading value)? getWeightsLoading,
    TResult Function(StatsStateGetWeightsLoaded value)? getWeightsLoaded,
    TResult Function(StatsStateFailed value)? failed,
  }) {
    return getWeightsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsStateInitial value)? initial,
    TResult Function(StatsStateGetWeightsLoading value)? getWeightsLoading,
    TResult Function(StatsStateGetWeightsLoaded value)? getWeightsLoaded,
    TResult Function(StatsStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (getWeightsLoaded != null) {
      return getWeightsLoaded(this);
    }
    return orElse();
  }
}

abstract class StatsStateGetWeightsLoaded extends StatsState {
  factory StatsStateGetWeightsLoaded({required final List<Poids> poids}) =
      _$StatsStateGetWeightsLoaded;
  StatsStateGetWeightsLoaded._() : super._();

  List<Poids> get poids;
  @JsonKey(ignore: true)
  _$$StatsStateGetWeightsLoadedCopyWith<_$StatsStateGetWeightsLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatsStateFailedCopyWith<$Res> {
  factory _$$StatsStateFailedCopyWith(
          _$StatsStateFailed value, $Res Function(_$StatsStateFailed) then) =
      __$$StatsStateFailedCopyWithImpl<$Res>;
  $Res call({APIError? error});
}

/// @nodoc
class __$$StatsStateFailedCopyWithImpl<$Res>
    extends _$StatsStateCopyWithImpl<$Res>
    implements _$$StatsStateFailedCopyWith<$Res> {
  __$$StatsStateFailedCopyWithImpl(
      _$StatsStateFailed _value, $Res Function(_$StatsStateFailed) _then)
      : super(_value, (v) => _then(v as _$StatsStateFailed));

  @override
  _$StatsStateFailed get _value => super._value as _$StatsStateFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$StatsStateFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as APIError?,
    ));
  }
}

/// @nodoc

class _$StatsStateFailed extends StatsStateFailed {
  _$StatsStateFailed({this.error}) : super._();

  @override
  final APIError? error;

  @override
  String toString() {
    return 'StatsState.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsStateFailed &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$StatsStateFailedCopyWith<_$StatsStateFailed> get copyWith =>
      __$$StatsStateFailedCopyWithImpl<_$StatsStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWeightsLoading,
    required TResult Function(List<Poids> poids) getWeightsLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWeightsLoading,
    TResult Function(List<Poids> poids)? getWeightsLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWeightsLoading,
    TResult Function(List<Poids> poids)? getWeightsLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatsStateInitial value) initial,
    required TResult Function(StatsStateGetWeightsLoading value)
        getWeightsLoading,
    required TResult Function(StatsStateGetWeightsLoaded value)
        getWeightsLoaded,
    required TResult Function(StatsStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatsStateInitial value)? initial,
    TResult Function(StatsStateGetWeightsLoading value)? getWeightsLoading,
    TResult Function(StatsStateGetWeightsLoaded value)? getWeightsLoaded,
    TResult Function(StatsStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsStateInitial value)? initial,
    TResult Function(StatsStateGetWeightsLoading value)? getWeightsLoading,
    TResult Function(StatsStateGetWeightsLoaded value)? getWeightsLoaded,
    TResult Function(StatsStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class StatsStateFailed extends StatsState {
  factory StatsStateFailed({final APIError? error}) = _$StatsStateFailed;
  StatsStateFailed._() : super._();

  APIError? get error;
  @JsonKey(ignore: true)
  _$$StatsStateFailedCopyWith<_$StatsStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
