// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weight_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeightState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendWeightLoading,
    required TResult Function() sendWeightLoaded,
    required TResult Function(APIError? error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendWeightLoading,
    TResult Function()? sendWeightLoaded,
    TResult Function(APIError? error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendWeightLoading,
    TResult Function()? sendWeightLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeightStateInitial value) initial,
    required TResult Function(WeightStateSendPoidsLoading value)
        sendWeightLoading,
    required TResult Function(WeightStateSendPoidsLoaded value)
        sendWeightLoaded,
    required TResult Function(WeightStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeightStateInitial value)? initial,
    TResult Function(WeightStateSendPoidsLoading value)? sendWeightLoading,
    TResult Function(WeightStateSendPoidsLoaded value)? sendWeightLoaded,
    TResult Function(WeightStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeightStateInitial value)? initial,
    TResult Function(WeightStateSendPoidsLoading value)? sendWeightLoading,
    TResult Function(WeightStateSendPoidsLoaded value)? sendWeightLoaded,
    TResult Function(WeightStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightStateCopyWith<$Res> {
  factory $WeightStateCopyWith(
          WeightState value, $Res Function(WeightState) then) =
      _$WeightStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeightStateCopyWithImpl<$Res> implements $WeightStateCopyWith<$Res> {
  _$WeightStateCopyWithImpl(this._value, this._then);

  final WeightState _value;
  // ignore: unused_field
  final $Res Function(WeightState) _then;
}

/// @nodoc
abstract class _$$WeightStateInitialCopyWith<$Res> {
  factory _$$WeightStateInitialCopyWith(_$WeightStateInitial value,
          $Res Function(_$WeightStateInitial) then) =
      __$$WeightStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeightStateInitialCopyWithImpl<$Res>
    extends _$WeightStateCopyWithImpl<$Res>
    implements _$$WeightStateInitialCopyWith<$Res> {
  __$$WeightStateInitialCopyWithImpl(
      _$WeightStateInitial _value, $Res Function(_$WeightStateInitial) _then)
      : super(_value, (v) => _then(v as _$WeightStateInitial));

  @override
  _$WeightStateInitial get _value => super._value as _$WeightStateInitial;
}

/// @nodoc

class _$WeightStateInitial extends WeightStateInitial {
  _$WeightStateInitial() : super._();

  @override
  String toString() {
    return 'WeightState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WeightStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendWeightLoading,
    required TResult Function() sendWeightLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendWeightLoading,
    TResult Function()? sendWeightLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendWeightLoading,
    TResult Function()? sendWeightLoaded,
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
    required TResult Function(WeightStateInitial value) initial,
    required TResult Function(WeightStateSendPoidsLoading value)
        sendWeightLoading,
    required TResult Function(WeightStateSendPoidsLoaded value)
        sendWeightLoaded,
    required TResult Function(WeightStateFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeightStateInitial value)? initial,
    TResult Function(WeightStateSendPoidsLoading value)? sendWeightLoading,
    TResult Function(WeightStateSendPoidsLoaded value)? sendWeightLoaded,
    TResult Function(WeightStateFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeightStateInitial value)? initial,
    TResult Function(WeightStateSendPoidsLoading value)? sendWeightLoading,
    TResult Function(WeightStateSendPoidsLoaded value)? sendWeightLoaded,
    TResult Function(WeightStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WeightStateInitial extends WeightState {
  factory WeightStateInitial() = _$WeightStateInitial;
  WeightStateInitial._() : super._();
}

/// @nodoc
abstract class _$$WeightStateSendPoidsLoadingCopyWith<$Res> {
  factory _$$WeightStateSendPoidsLoadingCopyWith(
          _$WeightStateSendPoidsLoading value,
          $Res Function(_$WeightStateSendPoidsLoading) then) =
      __$$WeightStateSendPoidsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeightStateSendPoidsLoadingCopyWithImpl<$Res>
    extends _$WeightStateCopyWithImpl<$Res>
    implements _$$WeightStateSendPoidsLoadingCopyWith<$Res> {
  __$$WeightStateSendPoidsLoadingCopyWithImpl(
      _$WeightStateSendPoidsLoading _value,
      $Res Function(_$WeightStateSendPoidsLoading) _then)
      : super(_value, (v) => _then(v as _$WeightStateSendPoidsLoading));

  @override
  _$WeightStateSendPoidsLoading get _value =>
      super._value as _$WeightStateSendPoidsLoading;
}

/// @nodoc

class _$WeightStateSendPoidsLoading extends WeightStateSendPoidsLoading {
  _$WeightStateSendPoidsLoading() : super._();

  @override
  String toString() {
    return 'WeightState.sendWeightLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightStateSendPoidsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendWeightLoading,
    required TResult Function() sendWeightLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return sendWeightLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendWeightLoading,
    TResult Function()? sendWeightLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return sendWeightLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendWeightLoading,
    TResult Function()? sendWeightLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) {
    if (sendWeightLoading != null) {
      return sendWeightLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeightStateInitial value) initial,
    required TResult Function(WeightStateSendPoidsLoading value)
        sendWeightLoading,
    required TResult Function(WeightStateSendPoidsLoaded value)
        sendWeightLoaded,
    required TResult Function(WeightStateFailed value) failed,
  }) {
    return sendWeightLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeightStateInitial value)? initial,
    TResult Function(WeightStateSendPoidsLoading value)? sendWeightLoading,
    TResult Function(WeightStateSendPoidsLoaded value)? sendWeightLoaded,
    TResult Function(WeightStateFailed value)? failed,
  }) {
    return sendWeightLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeightStateInitial value)? initial,
    TResult Function(WeightStateSendPoidsLoading value)? sendWeightLoading,
    TResult Function(WeightStateSendPoidsLoaded value)? sendWeightLoaded,
    TResult Function(WeightStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (sendWeightLoading != null) {
      return sendWeightLoading(this);
    }
    return orElse();
  }
}

abstract class WeightStateSendPoidsLoading extends WeightState {
  factory WeightStateSendPoidsLoading() = _$WeightStateSendPoidsLoading;
  WeightStateSendPoidsLoading._() : super._();
}

/// @nodoc
abstract class _$$WeightStateSendPoidsLoadedCopyWith<$Res> {
  factory _$$WeightStateSendPoidsLoadedCopyWith(
          _$WeightStateSendPoidsLoaded value,
          $Res Function(_$WeightStateSendPoidsLoaded) then) =
      __$$WeightStateSendPoidsLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeightStateSendPoidsLoadedCopyWithImpl<$Res>
    extends _$WeightStateCopyWithImpl<$Res>
    implements _$$WeightStateSendPoidsLoadedCopyWith<$Res> {
  __$$WeightStateSendPoidsLoadedCopyWithImpl(
      _$WeightStateSendPoidsLoaded _value,
      $Res Function(_$WeightStateSendPoidsLoaded) _then)
      : super(_value, (v) => _then(v as _$WeightStateSendPoidsLoaded));

  @override
  _$WeightStateSendPoidsLoaded get _value =>
      super._value as _$WeightStateSendPoidsLoaded;
}

/// @nodoc

class _$WeightStateSendPoidsLoaded extends WeightStateSendPoidsLoaded {
  _$WeightStateSendPoidsLoaded() : super._();

  @override
  String toString() {
    return 'WeightState.sendWeightLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightStateSendPoidsLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendWeightLoading,
    required TResult Function() sendWeightLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return sendWeightLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendWeightLoading,
    TResult Function()? sendWeightLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return sendWeightLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendWeightLoading,
    TResult Function()? sendWeightLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) {
    if (sendWeightLoaded != null) {
      return sendWeightLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeightStateInitial value) initial,
    required TResult Function(WeightStateSendPoidsLoading value)
        sendWeightLoading,
    required TResult Function(WeightStateSendPoidsLoaded value)
        sendWeightLoaded,
    required TResult Function(WeightStateFailed value) failed,
  }) {
    return sendWeightLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeightStateInitial value)? initial,
    TResult Function(WeightStateSendPoidsLoading value)? sendWeightLoading,
    TResult Function(WeightStateSendPoidsLoaded value)? sendWeightLoaded,
    TResult Function(WeightStateFailed value)? failed,
  }) {
    return sendWeightLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeightStateInitial value)? initial,
    TResult Function(WeightStateSendPoidsLoading value)? sendWeightLoading,
    TResult Function(WeightStateSendPoidsLoaded value)? sendWeightLoaded,
    TResult Function(WeightStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (sendWeightLoaded != null) {
      return sendWeightLoaded(this);
    }
    return orElse();
  }
}

abstract class WeightStateSendPoidsLoaded extends WeightState {
  factory WeightStateSendPoidsLoaded() = _$WeightStateSendPoidsLoaded;
  WeightStateSendPoidsLoaded._() : super._();
}

/// @nodoc
abstract class _$$WeightStateFailedCopyWith<$Res> {
  factory _$$WeightStateFailedCopyWith(
          _$WeightStateFailed value, $Res Function(_$WeightStateFailed) then) =
      __$$WeightStateFailedCopyWithImpl<$Res>;
  $Res call({APIError? error});

  $APIErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$WeightStateFailedCopyWithImpl<$Res>
    extends _$WeightStateCopyWithImpl<$Res>
    implements _$$WeightStateFailedCopyWith<$Res> {
  __$$WeightStateFailedCopyWithImpl(
      _$WeightStateFailed _value, $Res Function(_$WeightStateFailed) _then)
      : super(_value, (v) => _then(v as _$WeightStateFailed));

  @override
  _$WeightStateFailed get _value => super._value as _$WeightStateFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$WeightStateFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as APIError?,
    ));
  }

  @override
  $APIErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $APIErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$WeightStateFailed extends WeightStateFailed {
  _$WeightStateFailed({this.error}) : super._();

  @override
  final APIError? error;

  @override
  String toString() {
    return 'WeightState.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightStateFailed &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$WeightStateFailedCopyWith<_$WeightStateFailed> get copyWith =>
      __$$WeightStateFailedCopyWithImpl<_$WeightStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendWeightLoading,
    required TResult Function() sendWeightLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendWeightLoading,
    TResult Function()? sendWeightLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendWeightLoading,
    TResult Function()? sendWeightLoaded,
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
    required TResult Function(WeightStateInitial value) initial,
    required TResult Function(WeightStateSendPoidsLoading value)
        sendWeightLoading,
    required TResult Function(WeightStateSendPoidsLoaded value)
        sendWeightLoaded,
    required TResult Function(WeightStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeightStateInitial value)? initial,
    TResult Function(WeightStateSendPoidsLoading value)? sendWeightLoading,
    TResult Function(WeightStateSendPoidsLoaded value)? sendWeightLoaded,
    TResult Function(WeightStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeightStateInitial value)? initial,
    TResult Function(WeightStateSendPoidsLoading value)? sendWeightLoading,
    TResult Function(WeightStateSendPoidsLoaded value)? sendWeightLoaded,
    TResult Function(WeightStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class WeightStateFailed extends WeightState {
  factory WeightStateFailed({final APIError? error}) = _$WeightStateFailed;
  WeightStateFailed._() : super._();

  APIError? get error;
  @JsonKey(ignore: true)
  _$$WeightStateFailedCopyWith<_$WeightStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
