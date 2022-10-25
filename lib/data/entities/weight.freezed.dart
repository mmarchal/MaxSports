// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weight _$WeightFromJson(Map<String, dynamic> json) {
  return _Weight.fromJson(json);
}

/// @nodoc
mixin _$Weight {
  int? get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  double get poids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightCopyWith<Weight> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightCopyWith<$Res> {
  factory $WeightCopyWith(Weight value, $Res Function(Weight) then) =
      _$WeightCopyWithImpl<$Res>;
  $Res call({int? id, DateTime date, double poids});
}

/// @nodoc
class _$WeightCopyWithImpl<$Res> implements $WeightCopyWith<$Res> {
  _$WeightCopyWithImpl(this._value, this._then);

  final Weight _value;
  // ignore: unused_field
  final $Res Function(Weight) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? poids = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      poids: poids == freezed
          ? _value.poids
          : poids // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_WeightCopyWith<$Res> implements $WeightCopyWith<$Res> {
  factory _$$_WeightCopyWith(_$_Weight value, $Res Function(_$_Weight) then) =
      __$$_WeightCopyWithImpl<$Res>;
  @override
  $Res call({int? id, DateTime date, double poids});
}

/// @nodoc
class __$$_WeightCopyWithImpl<$Res> extends _$WeightCopyWithImpl<$Res>
    implements _$$_WeightCopyWith<$Res> {
  __$$_WeightCopyWithImpl(_$_Weight _value, $Res Function(_$_Weight) _then)
      : super(_value, (v) => _then(v as _$_Weight));

  @override
  _$_Weight get _value => super._value as _$_Weight;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? poids = freezed,
  }) {
    return _then(_$_Weight(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      poids: poids == freezed
          ? _value.poids
          : poids // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weight extends _Weight {
  const _$_Weight({this.id, required this.date, required this.poids})
      : super._();

  factory _$_Weight.fromJson(Map<String, dynamic> json) =>
      _$$_WeightFromJson(json);

  @override
  final int? id;
  @override
  final DateTime date;
  @override
  final double poids;

  @override
  String toString() {
    return 'Weight(id: $id, date: $date, poids: $poids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weight &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.poids, poids));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(poids));

  @JsonKey(ignore: true)
  @override
  _$$_WeightCopyWith<_$_Weight> get copyWith =>
      __$$_WeightCopyWithImpl<_$_Weight>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeightToJson(
      this,
    );
  }
}

abstract class _Weight extends Weight {
  const factory _Weight(
      {final int? id,
      required final DateTime date,
      required final double poids}) = _$_Weight;
  const _Weight._() : super._();

  factory _Weight.fromJson(Map<String, dynamic> json) = _$_Weight.fromJson;

  @override
  int? get id;
  @override
  DateTime get date;
  @override
  double get poids;
  @override
  @JsonKey(ignore: true)
  _$$_WeightCopyWith<_$_Weight> get copyWith =>
      throw _privateConstructorUsedError;
}
