// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Activite _$ActiviteFromJson(Map<String, dynamic> json) {
  return _Activite.fromJson(json);
}

/// @nodoc
mixin _$Activite {
  int? get id => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  double get temps => throw _privateConstructorUsedError;
  double? get vitesseMoyenne => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  TypeActivite get typeActivite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiviteCopyWith<Activite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiviteCopyWith<$Res> {
  factory $ActiviteCopyWith(Activite value, $Res Function(Activite) then) =
      _$ActiviteCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      double distance,
      double temps,
      double? vitesseMoyenne,
      DateTime date,
      TypeActivite typeActivite});

  $TypeActiviteCopyWith<$Res> get typeActivite;
}

/// @nodoc
class _$ActiviteCopyWithImpl<$Res> implements $ActiviteCopyWith<$Res> {
  _$ActiviteCopyWithImpl(this._value, this._then);

  final Activite _value;
  // ignore: unused_field
  final $Res Function(Activite) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? distance = freezed,
    Object? temps = freezed,
    Object? vitesseMoyenne = freezed,
    Object? date = freezed,
    Object? typeActivite = freezed,
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
      temps: temps == freezed
          ? _value.temps
          : temps // ignore: cast_nullable_to_non_nullable
              as double,
      vitesseMoyenne: vitesseMoyenne == freezed
          ? _value.vitesseMoyenne
          : vitesseMoyenne // ignore: cast_nullable_to_non_nullable
              as double?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      typeActivite: typeActivite == freezed
          ? _value.typeActivite
          : typeActivite // ignore: cast_nullable_to_non_nullable
              as TypeActivite,
    ));
  }

  @override
  $TypeActiviteCopyWith<$Res> get typeActivite {
    return $TypeActiviteCopyWith<$Res>(_value.typeActivite, (value) {
      return _then(_value.copyWith(typeActivite: value));
    });
  }
}

/// @nodoc
abstract class _$$_ActiviteCopyWith<$Res> implements $ActiviteCopyWith<$Res> {
  factory _$$_ActiviteCopyWith(
          _$_Activite value, $Res Function(_$_Activite) then) =
      __$$_ActiviteCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      double distance,
      double temps,
      double? vitesseMoyenne,
      DateTime date,
      TypeActivite typeActivite});

  @override
  $TypeActiviteCopyWith<$Res> get typeActivite;
}

/// @nodoc
class __$$_ActiviteCopyWithImpl<$Res> extends _$ActiviteCopyWithImpl<$Res>
    implements _$$_ActiviteCopyWith<$Res> {
  __$$_ActiviteCopyWithImpl(
      _$_Activite _value, $Res Function(_$_Activite) _then)
      : super(_value, (v) => _then(v as _$_Activite));

  @override
  _$_Activite get _value => super._value as _$_Activite;

  @override
  $Res call({
    Object? id = freezed,
    Object? distance = freezed,
    Object? temps = freezed,
    Object? vitesseMoyenne = freezed,
    Object? date = freezed,
    Object? typeActivite = freezed,
  }) {
    return _then(_$_Activite(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      temps: temps == freezed
          ? _value.temps
          : temps // ignore: cast_nullable_to_non_nullable
              as double,
      vitesseMoyenne: vitesseMoyenne == freezed
          ? _value.vitesseMoyenne
          : vitesseMoyenne // ignore: cast_nullable_to_non_nullable
              as double?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      typeActivite: typeActivite == freezed
          ? _value.typeActivite
          : typeActivite // ignore: cast_nullable_to_non_nullable
              as TypeActivite,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Activite extends _Activite {
  const _$_Activite(
      {this.id,
      required this.distance,
      required this.temps,
      this.vitesseMoyenne,
      required this.date,
      required this.typeActivite})
      : super._();

  factory _$_Activite.fromJson(Map<String, dynamic> json) =>
      _$$_ActiviteFromJson(json);

  @override
  final int? id;
  @override
  final double distance;
  @override
  final double temps;
  @override
  final double? vitesseMoyenne;
  @override
  final DateTime date;
  @override
  final TypeActivite typeActivite;

  @override
  String toString() {
    return 'Activite(id: $id, distance: $distance, temps: $temps, vitesseMoyenne: $vitesseMoyenne, date: $date, typeActivite: $typeActivite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Activite &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality().equals(other.temps, temps) &&
            const DeepCollectionEquality()
                .equals(other.vitesseMoyenne, vitesseMoyenne) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.typeActivite, typeActivite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(distance),
      const DeepCollectionEquality().hash(temps),
      const DeepCollectionEquality().hash(vitesseMoyenne),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(typeActivite));

  @JsonKey(ignore: true)
  @override
  _$$_ActiviteCopyWith<_$_Activite> get copyWith =>
      __$$_ActiviteCopyWithImpl<_$_Activite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActiviteToJson(
      this,
    );
  }
}

abstract class _Activite extends Activite {
  const factory _Activite(
      {final int? id,
      required final double distance,
      required final double temps,
      final double? vitesseMoyenne,
      required final DateTime date,
      required final TypeActivite typeActivite}) = _$_Activite;
  const _Activite._() : super._();

  factory _Activite.fromJson(Map<String, dynamic> json) = _$_Activite.fromJson;

  @override
  int? get id;
  @override
  double get distance;
  @override
  double get temps;
  @override
  double? get vitesseMoyenne;
  @override
  DateTime get date;
  @override
  TypeActivite get typeActivite;
  @override
  @JsonKey(ignore: true)
  _$$_ActiviteCopyWith<_$_Activite> get copyWith =>
      throw _privateConstructorUsedError;
}
