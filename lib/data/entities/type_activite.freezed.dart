// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'type_activite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TypeActivite _$TypeActiviteFromJson(Map<String, dynamic> json) {
  return _TypeActivite.fromJson(json);
}

/// @nodoc
mixin _$TypeActivite {
  int? get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeActiviteCopyWith<TypeActivite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeActiviteCopyWith<$Res> {
  factory $TypeActiviteCopyWith(
          TypeActivite value, $Res Function(TypeActivite) then) =
      _$TypeActiviteCopyWithImpl<$Res>;
  $Res call({int? id, String type, String imagePath});
}

/// @nodoc
class _$TypeActiviteCopyWithImpl<$Res> implements $TypeActiviteCopyWith<$Res> {
  _$TypeActiviteCopyWithImpl(this._value, this._then);

  final TypeActivite _value;
  // ignore: unused_field
  final $Res Function(TypeActivite) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TypeActiviteCopyWith<$Res>
    implements $TypeActiviteCopyWith<$Res> {
  factory _$$_TypeActiviteCopyWith(
          _$_TypeActivite value, $Res Function(_$_TypeActivite) then) =
      __$$_TypeActiviteCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String type, String imagePath});
}

/// @nodoc
class __$$_TypeActiviteCopyWithImpl<$Res>
    extends _$TypeActiviteCopyWithImpl<$Res>
    implements _$$_TypeActiviteCopyWith<$Res> {
  __$$_TypeActiviteCopyWithImpl(
      _$_TypeActivite _value, $Res Function(_$_TypeActivite) _then)
      : super(_value, (v) => _then(v as _$_TypeActivite));

  @override
  _$_TypeActivite get _value => super._value as _$_TypeActivite;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_$_TypeActivite(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TypeActivite extends _TypeActivite {
  const _$_TypeActivite({this.id, required this.type, required this.imagePath})
      : super._();

  factory _$_TypeActivite.fromJson(Map<String, dynamic> json) =>
      _$$_TypeActiviteFromJson(json);

  @override
  final int? id;
  @override
  final String type;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'TypeActivite(id: $id, type: $type, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeActivite &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(imagePath));

  @JsonKey(ignore: true)
  @override
  _$$_TypeActiviteCopyWith<_$_TypeActivite> get copyWith =>
      __$$_TypeActiviteCopyWithImpl<_$_TypeActivite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypeActiviteToJson(
      this,
    );
  }
}

abstract class _TypeActivite extends TypeActivite {
  const factory _TypeActivite(
      {final int? id,
      required final String type,
      required final String imagePath}) = _$_TypeActivite;
  const _TypeActivite._() : super._();

  factory _TypeActivite.fromJson(Map<String, dynamic> json) =
      _$_TypeActivite.fromJson;

  @override
  int? get id;
  @override
  String get type;
  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_TypeActiviteCopyWith<_$_TypeActivite> get copyWith =>
      throw _privateConstructorUsedError;
}
