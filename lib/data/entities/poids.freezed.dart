// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'poids.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Poids _$PoidsFromJson(Map<String, dynamic> json) {
  return _Poids.fromJson(json);
}

/// @nodoc
mixin _$Poids {
  int? get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  double get poids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PoidsCopyWith<Poids> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoidsCopyWith<$Res> {
  factory $PoidsCopyWith(Poids value, $Res Function(Poids) then) =
      _$PoidsCopyWithImpl<$Res>;
  $Res call({int? id, DateTime date, double poids});
}

/// @nodoc
class _$PoidsCopyWithImpl<$Res> implements $PoidsCopyWith<$Res> {
  _$PoidsCopyWithImpl(this._value, this._then);

  final Poids _value;
  // ignore: unused_field
  final $Res Function(Poids) _then;

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
abstract class _$$_PoidsCopyWith<$Res> implements $PoidsCopyWith<$Res> {
  factory _$$_PoidsCopyWith(_$_Poids value, $Res Function(_$_Poids) then) =
      __$$_PoidsCopyWithImpl<$Res>;
  @override
  $Res call({int? id, DateTime date, double poids});
}

/// @nodoc
class __$$_PoidsCopyWithImpl<$Res> extends _$PoidsCopyWithImpl<$Res>
    implements _$$_PoidsCopyWith<$Res> {
  __$$_PoidsCopyWithImpl(_$_Poids _value, $Res Function(_$_Poids) _then)
      : super(_value, (v) => _then(v as _$_Poids));

  @override
  _$_Poids get _value => super._value as _$_Poids;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? poids = freezed,
  }) {
    return _then(_$_Poids(
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
class _$_Poids extends _Poids {
  const _$_Poids({this.id, required this.date, required this.poids})
      : super._();

  factory _$_Poids.fromJson(Map<String, dynamic> json) =>
      _$$_PoidsFromJson(json);

  @override
  final int? id;
  @override
  final DateTime date;
  @override
  final double poids;

  @override
  String toString() {
    return 'Poids(id: $id, date: $date, poids: $poids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Poids &&
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
  _$$_PoidsCopyWith<_$_Poids> get copyWith =>
      __$$_PoidsCopyWithImpl<_$_Poids>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PoidsToJson(
      this,
    );
  }
}

abstract class _Poids extends Poids {
  const factory _Poids(
      {final int? id,
      required final DateTime date,
      required final double poids}) = _$_Poids;
  const _Poids._() : super._();

  factory _Poids.fromJson(Map<String, dynamic> json) = _$_Poids.fromJson;

  @override
  int? get id;
  @override
  DateTime get date;
  @override
  double get poids;
  @override
  @JsonKey(ignore: true)
  _$$_PoidsCopyWith<_$_Poids> get copyWith =>
      throw _privateConstructorUsedError;
}
