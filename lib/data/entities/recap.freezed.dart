// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recap.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Recap _$RecapFromJson(Map<String, dynamic> json) {
  return _Recap.fromJson(json);
}

/// @nodoc
mixin _$Recap {
  double get poidsRecent => throw _privateConstructorUsedError;
  DateTime get dateRecent => throw _privateConstructorUsedError;
  double get poidsLate => throw _privateConstructorUsedError;
  DateTime get dateLate => throw _privateConstructorUsedError;
  double get difference => throw _privateConstructorUsedError;
  EtatPoids get etat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecapCopyWith<Recap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecapCopyWith<$Res> {
  factory $RecapCopyWith(Recap value, $Res Function(Recap) then) =
      _$RecapCopyWithImpl<$Res>;
  $Res call(
      {double poidsRecent,
      DateTime dateRecent,
      double poidsLate,
      DateTime dateLate,
      double difference,
      EtatPoids etat});
}

/// @nodoc
class _$RecapCopyWithImpl<$Res> implements $RecapCopyWith<$Res> {
  _$RecapCopyWithImpl(this._value, this._then);

  final Recap _value;
  // ignore: unused_field
  final $Res Function(Recap) _then;

  @override
  $Res call({
    Object? poidsRecent = freezed,
    Object? dateRecent = freezed,
    Object? poidsLate = freezed,
    Object? dateLate = freezed,
    Object? difference = freezed,
    Object? etat = freezed,
  }) {
    return _then(_value.copyWith(
      poidsRecent: poidsRecent == freezed
          ? _value.poidsRecent
          : poidsRecent // ignore: cast_nullable_to_non_nullable
              as double,
      dateRecent: dateRecent == freezed
          ? _value.dateRecent
          : dateRecent // ignore: cast_nullable_to_non_nullable
              as DateTime,
      poidsLate: poidsLate == freezed
          ? _value.poidsLate
          : poidsLate // ignore: cast_nullable_to_non_nullable
              as double,
      dateLate: dateLate == freezed
          ? _value.dateLate
          : dateLate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      difference: difference == freezed
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as double,
      etat: etat == freezed
          ? _value.etat
          : etat // ignore: cast_nullable_to_non_nullable
              as EtatPoids,
    ));
  }
}

/// @nodoc
abstract class _$$_RecapCopyWith<$Res> implements $RecapCopyWith<$Res> {
  factory _$$_RecapCopyWith(_$_Recap value, $Res Function(_$_Recap) then) =
      __$$_RecapCopyWithImpl<$Res>;
  @override
  $Res call(
      {double poidsRecent,
      DateTime dateRecent,
      double poidsLate,
      DateTime dateLate,
      double difference,
      EtatPoids etat});
}

/// @nodoc
class __$$_RecapCopyWithImpl<$Res> extends _$RecapCopyWithImpl<$Res>
    implements _$$_RecapCopyWith<$Res> {
  __$$_RecapCopyWithImpl(_$_Recap _value, $Res Function(_$_Recap) _then)
      : super(_value, (v) => _then(v as _$_Recap));

  @override
  _$_Recap get _value => super._value as _$_Recap;

  @override
  $Res call({
    Object? poidsRecent = freezed,
    Object? dateRecent = freezed,
    Object? poidsLate = freezed,
    Object? dateLate = freezed,
    Object? difference = freezed,
    Object? etat = freezed,
  }) {
    return _then(_$_Recap(
      poidsRecent: poidsRecent == freezed
          ? _value.poidsRecent
          : poidsRecent // ignore: cast_nullable_to_non_nullable
              as double,
      dateRecent: dateRecent == freezed
          ? _value.dateRecent
          : dateRecent // ignore: cast_nullable_to_non_nullable
              as DateTime,
      poidsLate: poidsLate == freezed
          ? _value.poidsLate
          : poidsLate // ignore: cast_nullable_to_non_nullable
              as double,
      dateLate: dateLate == freezed
          ? _value.dateLate
          : dateLate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      difference: difference == freezed
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as double,
      etat: etat == freezed
          ? _value.etat
          : etat // ignore: cast_nullable_to_non_nullable
              as EtatPoids,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Recap extends _Recap {
  const _$_Recap(
      {required this.poidsRecent,
      required this.dateRecent,
      required this.poidsLate,
      required this.dateLate,
      required this.difference,
      required this.etat})
      : super._();

  factory _$_Recap.fromJson(Map<String, dynamic> json) =>
      _$$_RecapFromJson(json);

  @override
  final double poidsRecent;
  @override
  final DateTime dateRecent;
  @override
  final double poidsLate;
  @override
  final DateTime dateLate;
  @override
  final double difference;
  @override
  final EtatPoids etat;

  @override
  String toString() {
    return 'Recap(poidsRecent: $poidsRecent, dateRecent: $dateRecent, poidsLate: $poidsLate, dateLate: $dateLate, difference: $difference, etat: $etat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Recap &&
            const DeepCollectionEquality()
                .equals(other.poidsRecent, poidsRecent) &&
            const DeepCollectionEquality()
                .equals(other.dateRecent, dateRecent) &&
            const DeepCollectionEquality().equals(other.poidsLate, poidsLate) &&
            const DeepCollectionEquality().equals(other.dateLate, dateLate) &&
            const DeepCollectionEquality()
                .equals(other.difference, difference) &&
            const DeepCollectionEquality().equals(other.etat, etat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(poidsRecent),
      const DeepCollectionEquality().hash(dateRecent),
      const DeepCollectionEquality().hash(poidsLate),
      const DeepCollectionEquality().hash(dateLate),
      const DeepCollectionEquality().hash(difference),
      const DeepCollectionEquality().hash(etat));

  @JsonKey(ignore: true)
  @override
  _$$_RecapCopyWith<_$_Recap> get copyWith =>
      __$$_RecapCopyWithImpl<_$_Recap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecapToJson(
      this,
    );
  }
}

abstract class _Recap extends Recap {
  const factory _Recap(
      {required final double poidsRecent,
      required final DateTime dateRecent,
      required final double poidsLate,
      required final DateTime dateLate,
      required final double difference,
      required final EtatPoids etat}) = _$_Recap;
  const _Recap._() : super._();

  factory _Recap.fromJson(Map<String, dynamic> json) = _$_Recap.fromJson;

  @override
  double get poidsRecent;
  @override
  DateTime get dateRecent;
  @override
  double get poidsLate;
  @override
  DateTime get dateLate;
  @override
  double get difference;
  @override
  EtatPoids get etat;
  @override
  @JsonKey(ignore: true)
  _$$_RecapCopyWith<_$_Recap> get copyWith =>
      throw _privateConstructorUsedError;
}
