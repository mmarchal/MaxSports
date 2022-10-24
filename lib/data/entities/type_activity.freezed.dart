// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'type_activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TypeActivity _$TypeActivityFromJson(Map<String, dynamic> json) {
  return _TypeActivity.fromJson(json);
}

/// @nodoc
mixin _$TypeActivity {
  int? get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeActivityCopyWith<TypeActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeActivityCopyWith<$Res> {
  factory $TypeActivityCopyWith(
          TypeActivity value, $Res Function(TypeActivity) then) =
      _$TypeActivityCopyWithImpl<$Res>;
  $Res call({int? id, String type, String imagePath});
}

/// @nodoc
class _$TypeActivityCopyWithImpl<$Res> implements $TypeActivityCopyWith<$Res> {
  _$TypeActivityCopyWithImpl(this._value, this._then);

  final TypeActivity _value;
  // ignore: unused_field
  final $Res Function(TypeActivity) _then;

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
abstract class _$$_TypeActivityCopyWith<$Res>
    implements $TypeActivityCopyWith<$Res> {
  factory _$$_TypeActivityCopyWith(
          _$_TypeActivity value, $Res Function(_$_TypeActivity) then) =
      __$$_TypeActivityCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String type, String imagePath});
}

/// @nodoc
class __$$_TypeActivityCopyWithImpl<$Res>
    extends _$TypeActivityCopyWithImpl<$Res>
    implements _$$_TypeActivityCopyWith<$Res> {
  __$$_TypeActivityCopyWithImpl(
      _$_TypeActivity _value, $Res Function(_$_TypeActivity) _then)
      : super(_value, (v) => _then(v as _$_TypeActivity));

  @override
  _$_TypeActivity get _value => super._value as _$_TypeActivity;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_$_TypeActivity(
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
class _$_TypeActivity extends _TypeActivity {
  const _$_TypeActivity({this.id, required this.type, required this.imagePath})
      : super._();

  factory _$_TypeActivity.fromJson(Map<String, dynamic> json) =>
      _$$_TypeActivityFromJson(json);

  @override
  final int? id;
  @override
  final String type;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'TypeActivity(id: $id, type: $type, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeActivity &&
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
  _$$_TypeActivityCopyWith<_$_TypeActivity> get copyWith =>
      __$$_TypeActivityCopyWithImpl<_$_TypeActivity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypeActivityToJson(
      this,
    );
  }
}

abstract class _TypeActivity extends TypeActivity {
  const factory _TypeActivity(
      {final int? id,
      required final String type,
      required final String imagePath}) = _$_TypeActivity;
  const _TypeActivity._() : super._();

  factory _TypeActivity.fromJson(Map<String, dynamic> json) =
      _$_TypeActivity.fromJson;

  @override
  int? get id;
  @override
  String get type;
  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_TypeActivityCopyWith<_$_TypeActivity> get copyWith =>
      throw _privateConstructorUsedError;
}
