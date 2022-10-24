// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Activity _$ActivityFromJson(Map<String, dynamic> json) {
  return _Activity.fromJson(json);
}

/// @nodoc
mixin _$Activity {
  int? get id => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'temps')
  double get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'vitesseMoyenne')
  double? get averageSpeed => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'typeActivite')
  TypeActivity get typeActivity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityCopyWith<Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      double distance,
      @JsonKey(name: 'temps') double duration,
      @JsonKey(name: 'vitesseMoyenne') double? averageSpeed,
      DateTime date,
      @JsonKey(name: 'typeActivite') TypeActivity typeActivity});

  $TypeActivityCopyWith<$Res> get typeActivity;
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res> implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  final Activity _value;
  // ignore: unused_field
  final $Res Function(Activity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? distance = freezed,
    Object? duration = freezed,
    Object? averageSpeed = freezed,
    Object? date = freezed,
    Object? typeActivity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      averageSpeed: averageSpeed == freezed
          ? _value.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      typeActivity: typeActivity == freezed
          ? _value.typeActivity
          : typeActivity // ignore: cast_nullable_to_non_nullable
              as TypeActivity,
    ));
  }

  @override
  $TypeActivityCopyWith<$Res> get typeActivity {
    return $TypeActivityCopyWith<$Res>(_value.typeActivity, (value) {
      return _then(_value.copyWith(typeActivity: value));
    });
  }
}

/// @nodoc
abstract class _$$_ActivityCopyWith<$Res> implements $ActivityCopyWith<$Res> {
  factory _$$_ActivityCopyWith(
          _$_Activity value, $Res Function(_$_Activity) then) =
      __$$_ActivityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      double distance,
      @JsonKey(name: 'temps') double duration,
      @JsonKey(name: 'vitesseMoyenne') double? averageSpeed,
      DateTime date,
      @JsonKey(name: 'typeActivite') TypeActivity typeActivity});

  @override
  $TypeActivityCopyWith<$Res> get typeActivity;
}

/// @nodoc
class __$$_ActivityCopyWithImpl<$Res> extends _$ActivityCopyWithImpl<$Res>
    implements _$$_ActivityCopyWith<$Res> {
  __$$_ActivityCopyWithImpl(
      _$_Activity _value, $Res Function(_$_Activity) _then)
      : super(_value, (v) => _then(v as _$_Activity));

  @override
  _$_Activity get _value => super._value as _$_Activity;

  @override
  $Res call({
    Object? id = freezed,
    Object? distance = freezed,
    Object? duration = freezed,
    Object? averageSpeed = freezed,
    Object? date = freezed,
    Object? typeActivity = freezed,
  }) {
    return _then(_$_Activity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      averageSpeed: averageSpeed == freezed
          ? _value.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      typeActivity: typeActivity == freezed
          ? _value.typeActivity
          : typeActivity // ignore: cast_nullable_to_non_nullable
              as TypeActivity,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Activity extends _Activity {
  const _$_Activity(
      {this.id,
      required this.distance,
      @JsonKey(name: 'temps') required this.duration,
      @JsonKey(name: 'vitesseMoyenne') this.averageSpeed,
      required this.date,
      @JsonKey(name: 'typeActivite') required this.typeActivity})
      : super._();

  factory _$_Activity.fromJson(Map<String, dynamic> json) =>
      _$$_ActivityFromJson(json);

  @override
  final int? id;
  @override
  final double distance;
  @override
  @JsonKey(name: 'temps')
  final double duration;
  @override
  @JsonKey(name: 'vitesseMoyenne')
  final double? averageSpeed;
  @override
  final DateTime date;
  @override
  @JsonKey(name: 'typeActivite')
  final TypeActivity typeActivity;

  @override
  String toString() {
    return 'Activity(id: $id, distance: $distance, duration: $duration, averageSpeed: $averageSpeed, date: $date, typeActivity: $typeActivity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Activity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.averageSpeed, averageSpeed) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.typeActivity, typeActivity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(distance),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(averageSpeed),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(typeActivity));

  @JsonKey(ignore: true)
  @override
  _$$_ActivityCopyWith<_$_Activity> get copyWith =>
      __$$_ActivityCopyWithImpl<_$_Activity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivityToJson(
      this,
    );
  }
}

abstract class _Activity extends Activity {
  const factory _Activity(
      {final int? id,
      required final double distance,
      @JsonKey(name: 'temps')
          required final double duration,
      @JsonKey(name: 'vitesseMoyenne')
          final double? averageSpeed,
      required final DateTime date,
      @JsonKey(name: 'typeActivite')
          required final TypeActivity typeActivity}) = _$_Activity;
  const _Activity._() : super._();

  factory _Activity.fromJson(Map<String, dynamic> json) = _$_Activity.fromJson;

  @override
  int? get id;
  @override
  double get distance;
  @override
  @JsonKey(name: 'temps')
  double get duration;
  @override
  @JsonKey(name: 'vitesseMoyenne')
  double? get averageSpeed;
  @override
  DateTime get date;
  @override
  @JsonKey(name: 'typeActivite')
  TypeActivity get typeActivity;
  @override
  @JsonKey(ignore: true)
  _$$_ActivityCopyWith<_$_Activity> get copyWith =>
      throw _privateConstructorUsedError;
}
