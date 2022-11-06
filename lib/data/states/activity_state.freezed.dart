// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActivityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Activity> activities) loaded,
    required TResult Function(TypeActivity type, int? time, double? distance)
        selectActivityInDropDown,
    required TResult Function(int time, TypeActivity? type, double? distance)
        inputTimeOfPractice,
    required TResult Function(double distance, int? time, TypeActivity? type)
        inputDistanceOfPractice,
    required TResult Function(Activity activite) postActivityLoading,
    required TResult Function(Activity activite) postActivityLoaded,
    required TResult Function(APIError? error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivityStateInitial value) initial,
    required TResult Function(ActivityStateLoading value) loading,
    required TResult Function(ActivityStateLoaded value) loaded,
    required TResult Function(ActivityStateSelectActiviteInDropDown value)
        selectActivityInDropDown,
    required TResult Function(ActivityStateInputTimeOfPractice value)
        inputTimeOfPractice,
    required TResult Function(ActivityStateInputDistanceOfPractice value)
        inputDistanceOfPractice,
    required TResult Function(ActivityStatePostActiviteLoading value)
        postActivityLoading,
    required TResult Function(ActivityStatePostActiviteLoaded value)
        postActivityLoaded,
    required TResult Function(ActivityStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityStateCopyWith<$Res> {
  factory $ActivityStateCopyWith(
          ActivityState value, $Res Function(ActivityState) then) =
      _$ActivityStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActivityStateCopyWithImpl<$Res>
    implements $ActivityStateCopyWith<$Res> {
  _$ActivityStateCopyWithImpl(this._value, this._then);

  final ActivityState _value;
  // ignore: unused_field
  final $Res Function(ActivityState) _then;
}

/// @nodoc
abstract class _$$ActivityStateInitialCopyWith<$Res> {
  factory _$$ActivityStateInitialCopyWith(_$ActivityStateInitial value,
          $Res Function(_$ActivityStateInitial) then) =
      __$$ActivityStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActivityStateInitialCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res>
    implements _$$ActivityStateInitialCopyWith<$Res> {
  __$$ActivityStateInitialCopyWithImpl(_$ActivityStateInitial _value,
      $Res Function(_$ActivityStateInitial) _then)
      : super(_value, (v) => _then(v as _$ActivityStateInitial));

  @override
  _$ActivityStateInitial get _value => super._value as _$ActivityStateInitial;
}

/// @nodoc

class _$ActivityStateInitial extends ActivityStateInitial {
  _$ActivityStateInitial() : super._();

  @override
  String toString() {
    return 'ActivityState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActivityStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Activity> activities) loaded,
    required TResult Function(TypeActivity type, int? time, double? distance)
        selectActivityInDropDown,
    required TResult Function(int time, TypeActivity? type, double? distance)
        inputTimeOfPractice,
    required TResult Function(double distance, int? time, TypeActivity? type)
        inputDistanceOfPractice,
    required TResult Function(Activity activite) postActivityLoading,
    required TResult Function(Activity activite) postActivityLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
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
    required TResult Function(ActivityStateInitial value) initial,
    required TResult Function(ActivityStateLoading value) loading,
    required TResult Function(ActivityStateLoaded value) loaded,
    required TResult Function(ActivityStateSelectActiviteInDropDown value)
        selectActivityInDropDown,
    required TResult Function(ActivityStateInputTimeOfPractice value)
        inputTimeOfPractice,
    required TResult Function(ActivityStateInputDistanceOfPractice value)
        inputDistanceOfPractice,
    required TResult Function(ActivityStatePostActiviteLoading value)
        postActivityLoading,
    required TResult Function(ActivityStatePostActiviteLoaded value)
        postActivityLoaded,
    required TResult Function(ActivityStateFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ActivityStateInitial extends ActivityState {
  factory ActivityStateInitial() = _$ActivityStateInitial;
  ActivityStateInitial._() : super._();
}

/// @nodoc
abstract class _$$ActivityStateLoadingCopyWith<$Res> {
  factory _$$ActivityStateLoadingCopyWith(_$ActivityStateLoading value,
          $Res Function(_$ActivityStateLoading) then) =
      __$$ActivityStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActivityStateLoadingCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res>
    implements _$$ActivityStateLoadingCopyWith<$Res> {
  __$$ActivityStateLoadingCopyWithImpl(_$ActivityStateLoading _value,
      $Res Function(_$ActivityStateLoading) _then)
      : super(_value, (v) => _then(v as _$ActivityStateLoading));

  @override
  _$ActivityStateLoading get _value => super._value as _$ActivityStateLoading;
}

/// @nodoc

class _$ActivityStateLoading extends ActivityStateLoading {
  _$ActivityStateLoading() : super._();

  @override
  String toString() {
    return 'ActivityState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActivityStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Activity> activities) loaded,
    required TResult Function(TypeActivity type, int? time, double? distance)
        selectActivityInDropDown,
    required TResult Function(int time, TypeActivity? type, double? distance)
        inputTimeOfPractice,
    required TResult Function(double distance, int? time, TypeActivity? type)
        inputDistanceOfPractice,
    required TResult Function(Activity activite) postActivityLoading,
    required TResult Function(Activity activite) postActivityLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivityStateInitial value) initial,
    required TResult Function(ActivityStateLoading value) loading,
    required TResult Function(ActivityStateLoaded value) loaded,
    required TResult Function(ActivityStateSelectActiviteInDropDown value)
        selectActivityInDropDown,
    required TResult Function(ActivityStateInputTimeOfPractice value)
        inputTimeOfPractice,
    required TResult Function(ActivityStateInputDistanceOfPractice value)
        inputDistanceOfPractice,
    required TResult Function(ActivityStatePostActiviteLoading value)
        postActivityLoading,
    required TResult Function(ActivityStatePostActiviteLoaded value)
        postActivityLoaded,
    required TResult Function(ActivityStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ActivityStateLoading extends ActivityState {
  factory ActivityStateLoading() = _$ActivityStateLoading;
  ActivityStateLoading._() : super._();
}

/// @nodoc
abstract class _$$ActivityStateLoadedCopyWith<$Res> {
  factory _$$ActivityStateLoadedCopyWith(_$ActivityStateLoaded value,
          $Res Function(_$ActivityStateLoaded) then) =
      __$$ActivityStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Activity> activities});
}

/// @nodoc
class __$$ActivityStateLoadedCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res>
    implements _$$ActivityStateLoadedCopyWith<$Res> {
  __$$ActivityStateLoadedCopyWithImpl(
      _$ActivityStateLoaded _value, $Res Function(_$ActivityStateLoaded) _then)
      : super(_value, (v) => _then(v as _$ActivityStateLoaded));

  @override
  _$ActivityStateLoaded get _value => super._value as _$ActivityStateLoaded;

  @override
  $Res call({
    Object? activities = freezed,
  }) {
    return _then(_$ActivityStateLoaded(
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
    ));
  }
}

/// @nodoc

class _$ActivityStateLoaded extends ActivityStateLoaded {
  _$ActivityStateLoaded({required this.activities}) : super._();

  @override
  final List<Activity> activities;

  @override
  String toString() {
    return 'ActivityState.loaded(activities: $activities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.activities, activities));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(activities));

  @JsonKey(ignore: true)
  @override
  _$$ActivityStateLoadedCopyWith<_$ActivityStateLoaded> get copyWith =>
      __$$ActivityStateLoadedCopyWithImpl<_$ActivityStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Activity> activities) loaded,
    required TResult Function(TypeActivity type, int? time, double? distance)
        selectActivityInDropDown,
    required TResult Function(int time, TypeActivity? type, double? distance)
        inputTimeOfPractice,
    required TResult Function(double distance, int? time, TypeActivity? type)
        inputDistanceOfPractice,
    required TResult Function(Activity activite) postActivityLoading,
    required TResult Function(Activity activite) postActivityLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return loaded(activities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return loaded?.call(activities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(activities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivityStateInitial value) initial,
    required TResult Function(ActivityStateLoading value) loading,
    required TResult Function(ActivityStateLoaded value) loaded,
    required TResult Function(ActivityStateSelectActiviteInDropDown value)
        selectActivityInDropDown,
    required TResult Function(ActivityStateInputTimeOfPractice value)
        inputTimeOfPractice,
    required TResult Function(ActivityStateInputDistanceOfPractice value)
        inputDistanceOfPractice,
    required TResult Function(ActivityStatePostActiviteLoading value)
        postActivityLoading,
    required TResult Function(ActivityStatePostActiviteLoaded value)
        postActivityLoaded,
    required TResult Function(ActivityStateFailed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ActivityStateLoaded extends ActivityState {
  factory ActivityStateLoaded({required final List<Activity> activities}) =
      _$ActivityStateLoaded;
  ActivityStateLoaded._() : super._();

  List<Activity> get activities;
  @JsonKey(ignore: true)
  _$$ActivityStateLoadedCopyWith<_$ActivityStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivityStateSelectActiviteInDropDownCopyWith<$Res> {
  factory _$$ActivityStateSelectActiviteInDropDownCopyWith(
          _$ActivityStateSelectActiviteInDropDown value,
          $Res Function(_$ActivityStateSelectActiviteInDropDown) then) =
      __$$ActivityStateSelectActiviteInDropDownCopyWithImpl<$Res>;
  $Res call({TypeActivity type, int? time, double? distance});

  $TypeActivityCopyWith<$Res> get type;
}

/// @nodoc
class __$$ActivityStateSelectActiviteInDropDownCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res>
    implements _$$ActivityStateSelectActiviteInDropDownCopyWith<$Res> {
  __$$ActivityStateSelectActiviteInDropDownCopyWithImpl(
      _$ActivityStateSelectActiviteInDropDown _value,
      $Res Function(_$ActivityStateSelectActiviteInDropDown) _then)
      : super(
            _value, (v) => _then(v as _$ActivityStateSelectActiviteInDropDown));

  @override
  _$ActivityStateSelectActiviteInDropDown get _value =>
      super._value as _$ActivityStateSelectActiviteInDropDown;

  @override
  $Res call({
    Object? type = freezed,
    Object? time = freezed,
    Object? distance = freezed,
  }) {
    return _then(_$ActivityStateSelectActiviteInDropDown(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeActivity,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $TypeActivityCopyWith<$Res> get type {
    return $TypeActivityCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$ActivityStateSelectActiviteInDropDown
    extends ActivityStateSelectActiviteInDropDown {
  _$ActivityStateSelectActiviteInDropDown(
      {required this.type, this.time, this.distance})
      : super._();

  @override
  final TypeActivity type;
  @override
  final int? time;
  @override
  final double? distance;

  @override
  String toString() {
    return 'ActivityState.selectActivityInDropDown(type: $type, time: $time, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityStateSelectActiviteInDropDown &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.distance, distance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(distance));

  @JsonKey(ignore: true)
  @override
  _$$ActivityStateSelectActiviteInDropDownCopyWith<
          _$ActivityStateSelectActiviteInDropDown>
      get copyWith => __$$ActivityStateSelectActiviteInDropDownCopyWithImpl<
          _$ActivityStateSelectActiviteInDropDown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Activity> activities) loaded,
    required TResult Function(TypeActivity type, int? time, double? distance)
        selectActivityInDropDown,
    required TResult Function(int time, TypeActivity? type, double? distance)
        inputTimeOfPractice,
    required TResult Function(double distance, int? time, TypeActivity? type)
        inputDistanceOfPractice,
    required TResult Function(Activity activite) postActivityLoading,
    required TResult Function(Activity activite) postActivityLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return selectActivityInDropDown(type, time, distance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return selectActivityInDropDown?.call(type, time, distance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) {
    if (selectActivityInDropDown != null) {
      return selectActivityInDropDown(type, time, distance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivityStateInitial value) initial,
    required TResult Function(ActivityStateLoading value) loading,
    required TResult Function(ActivityStateLoaded value) loaded,
    required TResult Function(ActivityStateSelectActiviteInDropDown value)
        selectActivityInDropDown,
    required TResult Function(ActivityStateInputTimeOfPractice value)
        inputTimeOfPractice,
    required TResult Function(ActivityStateInputDistanceOfPractice value)
        inputDistanceOfPractice,
    required TResult Function(ActivityStatePostActiviteLoading value)
        postActivityLoading,
    required TResult Function(ActivityStatePostActiviteLoaded value)
        postActivityLoaded,
    required TResult Function(ActivityStateFailed value) failed,
  }) {
    return selectActivityInDropDown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
  }) {
    return selectActivityInDropDown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (selectActivityInDropDown != null) {
      return selectActivityInDropDown(this);
    }
    return orElse();
  }
}

abstract class ActivityStateSelectActiviteInDropDown extends ActivityState {
  factory ActivityStateSelectActiviteInDropDown(
      {required final TypeActivity type,
      final int? time,
      final double? distance}) = _$ActivityStateSelectActiviteInDropDown;
  ActivityStateSelectActiviteInDropDown._() : super._();

  TypeActivity get type;
  int? get time;
  double? get distance;
  @JsonKey(ignore: true)
  _$$ActivityStateSelectActiviteInDropDownCopyWith<
          _$ActivityStateSelectActiviteInDropDown>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivityStateInputTimeOfPracticeCopyWith<$Res> {
  factory _$$ActivityStateInputTimeOfPracticeCopyWith(
          _$ActivityStateInputTimeOfPractice value,
          $Res Function(_$ActivityStateInputTimeOfPractice) then) =
      __$$ActivityStateInputTimeOfPracticeCopyWithImpl<$Res>;
  $Res call({int time, TypeActivity? type, double? distance});

  $TypeActivityCopyWith<$Res>? get type;
}

/// @nodoc
class __$$ActivityStateInputTimeOfPracticeCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res>
    implements _$$ActivityStateInputTimeOfPracticeCopyWith<$Res> {
  __$$ActivityStateInputTimeOfPracticeCopyWithImpl(
      _$ActivityStateInputTimeOfPractice _value,
      $Res Function(_$ActivityStateInputTimeOfPractice) _then)
      : super(_value, (v) => _then(v as _$ActivityStateInputTimeOfPractice));

  @override
  _$ActivityStateInputTimeOfPractice get _value =>
      super._value as _$ActivityStateInputTimeOfPractice;

  @override
  $Res call({
    Object? time = freezed,
    Object? type = freezed,
    Object? distance = freezed,
  }) {
    return _then(_$ActivityStateInputTimeOfPractice(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeActivity?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $TypeActivityCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $TypeActivityCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$ActivityStateInputTimeOfPractice
    extends ActivityStateInputTimeOfPractice {
  _$ActivityStateInputTimeOfPractice(
      {required this.time, this.type, this.distance})
      : super._();

  @override
  final int time;
  @override
  final TypeActivity? type;
  @override
  final double? distance;

  @override
  String toString() {
    return 'ActivityState.inputTimeOfPractice(time: $time, type: $type, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityStateInputTimeOfPractice &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.distance, distance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(distance));

  @JsonKey(ignore: true)
  @override
  _$$ActivityStateInputTimeOfPracticeCopyWith<
          _$ActivityStateInputTimeOfPractice>
      get copyWith => __$$ActivityStateInputTimeOfPracticeCopyWithImpl<
          _$ActivityStateInputTimeOfPractice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Activity> activities) loaded,
    required TResult Function(TypeActivity type, int? time, double? distance)
        selectActivityInDropDown,
    required TResult Function(int time, TypeActivity? type, double? distance)
        inputTimeOfPractice,
    required TResult Function(double distance, int? time, TypeActivity? type)
        inputDistanceOfPractice,
    required TResult Function(Activity activite) postActivityLoading,
    required TResult Function(Activity activite) postActivityLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return inputTimeOfPractice(time, type, distance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return inputTimeOfPractice?.call(time, type, distance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) {
    if (inputTimeOfPractice != null) {
      return inputTimeOfPractice(time, type, distance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivityStateInitial value) initial,
    required TResult Function(ActivityStateLoading value) loading,
    required TResult Function(ActivityStateLoaded value) loaded,
    required TResult Function(ActivityStateSelectActiviteInDropDown value)
        selectActivityInDropDown,
    required TResult Function(ActivityStateInputTimeOfPractice value)
        inputTimeOfPractice,
    required TResult Function(ActivityStateInputDistanceOfPractice value)
        inputDistanceOfPractice,
    required TResult Function(ActivityStatePostActiviteLoading value)
        postActivityLoading,
    required TResult Function(ActivityStatePostActiviteLoaded value)
        postActivityLoaded,
    required TResult Function(ActivityStateFailed value) failed,
  }) {
    return inputTimeOfPractice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
  }) {
    return inputTimeOfPractice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (inputTimeOfPractice != null) {
      return inputTimeOfPractice(this);
    }
    return orElse();
  }
}

abstract class ActivityStateInputTimeOfPractice extends ActivityState {
  factory ActivityStateInputTimeOfPractice(
      {required final int time,
      final TypeActivity? type,
      final double? distance}) = _$ActivityStateInputTimeOfPractice;
  ActivityStateInputTimeOfPractice._() : super._();

  int get time;
  TypeActivity? get type;
  double? get distance;
  @JsonKey(ignore: true)
  _$$ActivityStateInputTimeOfPracticeCopyWith<
          _$ActivityStateInputTimeOfPractice>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivityStateInputDistanceOfPracticeCopyWith<$Res> {
  factory _$$ActivityStateInputDistanceOfPracticeCopyWith(
          _$ActivityStateInputDistanceOfPractice value,
          $Res Function(_$ActivityStateInputDistanceOfPractice) then) =
      __$$ActivityStateInputDistanceOfPracticeCopyWithImpl<$Res>;
  $Res call({double distance, int? time, TypeActivity? type});

  $TypeActivityCopyWith<$Res>? get type;
}

/// @nodoc
class __$$ActivityStateInputDistanceOfPracticeCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res>
    implements _$$ActivityStateInputDistanceOfPracticeCopyWith<$Res> {
  __$$ActivityStateInputDistanceOfPracticeCopyWithImpl(
      _$ActivityStateInputDistanceOfPractice _value,
      $Res Function(_$ActivityStateInputDistanceOfPractice) _then)
      : super(
            _value, (v) => _then(v as _$ActivityStateInputDistanceOfPractice));

  @override
  _$ActivityStateInputDistanceOfPractice get _value =>
      super._value as _$ActivityStateInputDistanceOfPractice;

  @override
  $Res call({
    Object? distance = freezed,
    Object? time = freezed,
    Object? type = freezed,
  }) {
    return _then(_$ActivityStateInputDistanceOfPractice(
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeActivity?,
    ));
  }

  @override
  $TypeActivityCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $TypeActivityCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$ActivityStateInputDistanceOfPractice
    extends ActivityStateInputDistanceOfPractice {
  _$ActivityStateInputDistanceOfPractice(
      {required this.distance, this.time, this.type})
      : super._();

  @override
  final double distance;
  @override
  final int? time;
  @override
  final TypeActivity? type;

  @override
  String toString() {
    return 'ActivityState.inputDistanceOfPractice(distance: $distance, time: $time, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityStateInputDistanceOfPractice &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(distance),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$ActivityStateInputDistanceOfPracticeCopyWith<
          _$ActivityStateInputDistanceOfPractice>
      get copyWith => __$$ActivityStateInputDistanceOfPracticeCopyWithImpl<
          _$ActivityStateInputDistanceOfPractice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Activity> activities) loaded,
    required TResult Function(TypeActivity type, int? time, double? distance)
        selectActivityInDropDown,
    required TResult Function(int time, TypeActivity? type, double? distance)
        inputTimeOfPractice,
    required TResult Function(double distance, int? time, TypeActivity? type)
        inputDistanceOfPractice,
    required TResult Function(Activity activite) postActivityLoading,
    required TResult Function(Activity activite) postActivityLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return inputDistanceOfPractice(distance, time, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return inputDistanceOfPractice?.call(distance, time, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) {
    if (inputDistanceOfPractice != null) {
      return inputDistanceOfPractice(distance, time, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivityStateInitial value) initial,
    required TResult Function(ActivityStateLoading value) loading,
    required TResult Function(ActivityStateLoaded value) loaded,
    required TResult Function(ActivityStateSelectActiviteInDropDown value)
        selectActivityInDropDown,
    required TResult Function(ActivityStateInputTimeOfPractice value)
        inputTimeOfPractice,
    required TResult Function(ActivityStateInputDistanceOfPractice value)
        inputDistanceOfPractice,
    required TResult Function(ActivityStatePostActiviteLoading value)
        postActivityLoading,
    required TResult Function(ActivityStatePostActiviteLoaded value)
        postActivityLoaded,
    required TResult Function(ActivityStateFailed value) failed,
  }) {
    return inputDistanceOfPractice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
  }) {
    return inputDistanceOfPractice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (inputDistanceOfPractice != null) {
      return inputDistanceOfPractice(this);
    }
    return orElse();
  }
}

abstract class ActivityStateInputDistanceOfPractice extends ActivityState {
  factory ActivityStateInputDistanceOfPractice(
      {required final double distance,
      final int? time,
      final TypeActivity? type}) = _$ActivityStateInputDistanceOfPractice;
  ActivityStateInputDistanceOfPractice._() : super._();

  double get distance;
  int? get time;
  TypeActivity? get type;
  @JsonKey(ignore: true)
  _$$ActivityStateInputDistanceOfPracticeCopyWith<
          _$ActivityStateInputDistanceOfPractice>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivityStatePostActiviteLoadingCopyWith<$Res> {
  factory _$$ActivityStatePostActiviteLoadingCopyWith(
          _$ActivityStatePostActiviteLoading value,
          $Res Function(_$ActivityStatePostActiviteLoading) then) =
      __$$ActivityStatePostActiviteLoadingCopyWithImpl<$Res>;
  $Res call({Activity activite});

  $ActivityCopyWith<$Res> get activite;
}

/// @nodoc
class __$$ActivityStatePostActiviteLoadingCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res>
    implements _$$ActivityStatePostActiviteLoadingCopyWith<$Res> {
  __$$ActivityStatePostActiviteLoadingCopyWithImpl(
      _$ActivityStatePostActiviteLoading _value,
      $Res Function(_$ActivityStatePostActiviteLoading) _then)
      : super(_value, (v) => _then(v as _$ActivityStatePostActiviteLoading));

  @override
  _$ActivityStatePostActiviteLoading get _value =>
      super._value as _$ActivityStatePostActiviteLoading;

  @override
  $Res call({
    Object? activite = freezed,
  }) {
    return _then(_$ActivityStatePostActiviteLoading(
      activite: activite == freezed
          ? _value.activite
          : activite // ignore: cast_nullable_to_non_nullable
              as Activity,
    ));
  }

  @override
  $ActivityCopyWith<$Res> get activite {
    return $ActivityCopyWith<$Res>(_value.activite, (value) {
      return _then(_value.copyWith(activite: value));
    });
  }
}

/// @nodoc

class _$ActivityStatePostActiviteLoading
    extends ActivityStatePostActiviteLoading {
  _$ActivityStatePostActiviteLoading({required this.activite}) : super._();

  @override
  final Activity activite;

  @override
  String toString() {
    return 'ActivityState.postActivityLoading(activite: $activite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityStatePostActiviteLoading &&
            const DeepCollectionEquality().equals(other.activite, activite));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(activite));

  @JsonKey(ignore: true)
  @override
  _$$ActivityStatePostActiviteLoadingCopyWith<
          _$ActivityStatePostActiviteLoading>
      get copyWith => __$$ActivityStatePostActiviteLoadingCopyWithImpl<
          _$ActivityStatePostActiviteLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Activity> activities) loaded,
    required TResult Function(TypeActivity type, int? time, double? distance)
        selectActivityInDropDown,
    required TResult Function(int time, TypeActivity? type, double? distance)
        inputTimeOfPractice,
    required TResult Function(double distance, int? time, TypeActivity? type)
        inputDistanceOfPractice,
    required TResult Function(Activity activite) postActivityLoading,
    required TResult Function(Activity activite) postActivityLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return postActivityLoading(activite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return postActivityLoading?.call(activite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) {
    if (postActivityLoading != null) {
      return postActivityLoading(activite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivityStateInitial value) initial,
    required TResult Function(ActivityStateLoading value) loading,
    required TResult Function(ActivityStateLoaded value) loaded,
    required TResult Function(ActivityStateSelectActiviteInDropDown value)
        selectActivityInDropDown,
    required TResult Function(ActivityStateInputTimeOfPractice value)
        inputTimeOfPractice,
    required TResult Function(ActivityStateInputDistanceOfPractice value)
        inputDistanceOfPractice,
    required TResult Function(ActivityStatePostActiviteLoading value)
        postActivityLoading,
    required TResult Function(ActivityStatePostActiviteLoaded value)
        postActivityLoaded,
    required TResult Function(ActivityStateFailed value) failed,
  }) {
    return postActivityLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
  }) {
    return postActivityLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (postActivityLoading != null) {
      return postActivityLoading(this);
    }
    return orElse();
  }
}

abstract class ActivityStatePostActiviteLoading extends ActivityState {
  factory ActivityStatePostActiviteLoading({required final Activity activite}) =
      _$ActivityStatePostActiviteLoading;
  ActivityStatePostActiviteLoading._() : super._();

  Activity get activite;
  @JsonKey(ignore: true)
  _$$ActivityStatePostActiviteLoadingCopyWith<
          _$ActivityStatePostActiviteLoading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivityStatePostActiviteLoadedCopyWith<$Res> {
  factory _$$ActivityStatePostActiviteLoadedCopyWith(
          _$ActivityStatePostActiviteLoaded value,
          $Res Function(_$ActivityStatePostActiviteLoaded) then) =
      __$$ActivityStatePostActiviteLoadedCopyWithImpl<$Res>;
  $Res call({Activity activite});

  $ActivityCopyWith<$Res> get activite;
}

/// @nodoc
class __$$ActivityStatePostActiviteLoadedCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res>
    implements _$$ActivityStatePostActiviteLoadedCopyWith<$Res> {
  __$$ActivityStatePostActiviteLoadedCopyWithImpl(
      _$ActivityStatePostActiviteLoaded _value,
      $Res Function(_$ActivityStatePostActiviteLoaded) _then)
      : super(_value, (v) => _then(v as _$ActivityStatePostActiviteLoaded));

  @override
  _$ActivityStatePostActiviteLoaded get _value =>
      super._value as _$ActivityStatePostActiviteLoaded;

  @override
  $Res call({
    Object? activite = freezed,
  }) {
    return _then(_$ActivityStatePostActiviteLoaded(
      activite: activite == freezed
          ? _value.activite
          : activite // ignore: cast_nullable_to_non_nullable
              as Activity,
    ));
  }

  @override
  $ActivityCopyWith<$Res> get activite {
    return $ActivityCopyWith<$Res>(_value.activite, (value) {
      return _then(_value.copyWith(activite: value));
    });
  }
}

/// @nodoc

class _$ActivityStatePostActiviteLoaded
    extends ActivityStatePostActiviteLoaded {
  _$ActivityStatePostActiviteLoaded({required this.activite}) : super._();

  @override
  final Activity activite;

  @override
  String toString() {
    return 'ActivityState.postActivityLoaded(activite: $activite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityStatePostActiviteLoaded &&
            const DeepCollectionEquality().equals(other.activite, activite));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(activite));

  @JsonKey(ignore: true)
  @override
  _$$ActivityStatePostActiviteLoadedCopyWith<_$ActivityStatePostActiviteLoaded>
      get copyWith => __$$ActivityStatePostActiviteLoadedCopyWithImpl<
          _$ActivityStatePostActiviteLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Activity> activities) loaded,
    required TResult Function(TypeActivity type, int? time, double? distance)
        selectActivityInDropDown,
    required TResult Function(int time, TypeActivity? type, double? distance)
        inputTimeOfPractice,
    required TResult Function(double distance, int? time, TypeActivity? type)
        inputDistanceOfPractice,
    required TResult Function(Activity activite) postActivityLoading,
    required TResult Function(Activity activite) postActivityLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return postActivityLoaded(activite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return postActivityLoaded?.call(activite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
    required TResult orElse(),
  }) {
    if (postActivityLoaded != null) {
      return postActivityLoaded(activite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivityStateInitial value) initial,
    required TResult Function(ActivityStateLoading value) loading,
    required TResult Function(ActivityStateLoaded value) loaded,
    required TResult Function(ActivityStateSelectActiviteInDropDown value)
        selectActivityInDropDown,
    required TResult Function(ActivityStateInputTimeOfPractice value)
        inputTimeOfPractice,
    required TResult Function(ActivityStateInputDistanceOfPractice value)
        inputDistanceOfPractice,
    required TResult Function(ActivityStatePostActiviteLoading value)
        postActivityLoading,
    required TResult Function(ActivityStatePostActiviteLoaded value)
        postActivityLoaded,
    required TResult Function(ActivityStateFailed value) failed,
  }) {
    return postActivityLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
  }) {
    return postActivityLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (postActivityLoaded != null) {
      return postActivityLoaded(this);
    }
    return orElse();
  }
}

abstract class ActivityStatePostActiviteLoaded extends ActivityState {
  factory ActivityStatePostActiviteLoaded({required final Activity activite}) =
      _$ActivityStatePostActiviteLoaded;
  ActivityStatePostActiviteLoaded._() : super._();

  Activity get activite;
  @JsonKey(ignore: true)
  _$$ActivityStatePostActiviteLoadedCopyWith<_$ActivityStatePostActiviteLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivityStateFailedCopyWith<$Res> {
  factory _$$ActivityStateFailedCopyWith(_$ActivityStateFailed value,
          $Res Function(_$ActivityStateFailed) then) =
      __$$ActivityStateFailedCopyWithImpl<$Res>;
  $Res call({APIError? error});

  $APIErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ActivityStateFailedCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res>
    implements _$$ActivityStateFailedCopyWith<$Res> {
  __$$ActivityStateFailedCopyWithImpl(
      _$ActivityStateFailed _value, $Res Function(_$ActivityStateFailed) _then)
      : super(_value, (v) => _then(v as _$ActivityStateFailed));

  @override
  _$ActivityStateFailed get _value => super._value as _$ActivityStateFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ActivityStateFailed(
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

class _$ActivityStateFailed extends ActivityStateFailed {
  _$ActivityStateFailed({this.error}) : super._();

  @override
  final APIError? error;

  @override
  String toString() {
    return 'ActivityState.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityStateFailed &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$ActivityStateFailedCopyWith<_$ActivityStateFailed> get copyWith =>
      __$$ActivityStateFailedCopyWithImpl<_$ActivityStateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Activity> activities) loaded,
    required TResult Function(TypeActivity type, int? time, double? distance)
        selectActivityInDropDown,
    required TResult Function(int time, TypeActivity? type, double? distance)
        inputTimeOfPractice,
    required TResult Function(double distance, int? time, TypeActivity? type)
        inputDistanceOfPractice,
    required TResult Function(Activity activite) postActivityLoading,
    required TResult Function(Activity activite) postActivityLoaded,
    required TResult Function(APIError? error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
    TResult Function(APIError? error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Activity> activities)? loaded,
    TResult Function(TypeActivity type, int? time, double? distance)?
        selectActivityInDropDown,
    TResult Function(int time, TypeActivity? type, double? distance)?
        inputTimeOfPractice,
    TResult Function(double distance, int? time, TypeActivity? type)?
        inputDistanceOfPractice,
    TResult Function(Activity activite)? postActivityLoading,
    TResult Function(Activity activite)? postActivityLoaded,
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
    required TResult Function(ActivityStateInitial value) initial,
    required TResult Function(ActivityStateLoading value) loading,
    required TResult Function(ActivityStateLoaded value) loaded,
    required TResult Function(ActivityStateSelectActiviteInDropDown value)
        selectActivityInDropDown,
    required TResult Function(ActivityStateInputTimeOfPractice value)
        inputTimeOfPractice,
    required TResult Function(ActivityStateInputDistanceOfPractice value)
        inputDistanceOfPractice,
    required TResult Function(ActivityStatePostActiviteLoading value)
        postActivityLoading,
    required TResult Function(ActivityStatePostActiviteLoaded value)
        postActivityLoaded,
    required TResult Function(ActivityStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivityStateInitial value)? initial,
    TResult Function(ActivityStateLoading value)? loading,
    TResult Function(ActivityStateLoaded value)? loaded,
    TResult Function(ActivityStateSelectActiviteInDropDown value)?
        selectActivityInDropDown,
    TResult Function(ActivityStateInputTimeOfPractice value)?
        inputTimeOfPractice,
    TResult Function(ActivityStateInputDistanceOfPractice value)?
        inputDistanceOfPractice,
    TResult Function(ActivityStatePostActiviteLoading value)?
        postActivityLoading,
    TResult Function(ActivityStatePostActiviteLoaded value)? postActivityLoaded,
    TResult Function(ActivityStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class ActivityStateFailed extends ActivityState {
  factory ActivityStateFailed({final APIError? error}) = _$ActivityStateFailed;
  ActivityStateFailed._() : super._();

  APIError? get error;
  @JsonKey(ignore: true)
  _$$ActivityStateFailedCopyWith<_$ActivityStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
