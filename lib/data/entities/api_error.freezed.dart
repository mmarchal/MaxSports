// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

APIError _$APIErrorFromJson(Map<String, dynamic> json) {
  return _APIError.fromJson(json);
}

/// @nodoc
mixin _$APIError {
  String? get systemMessage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $APIErrorCopyWith<APIError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIErrorCopyWith<$Res> {
  factory $APIErrorCopyWith(APIError value, $Res Function(APIError) then) =
      _$APIErrorCopyWithImpl<$Res>;
  $Res call({String? systemMessage, String title, String content});
}

/// @nodoc
class _$APIErrorCopyWithImpl<$Res> implements $APIErrorCopyWith<$Res> {
  _$APIErrorCopyWithImpl(this._value, this._then);

  final APIError _value;
  // ignore: unused_field
  final $Res Function(APIError) _then;

  @override
  $Res call({
    Object? systemMessage = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      systemMessage: systemMessage == freezed
          ? _value.systemMessage
          : systemMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_APIErrorCopyWith<$Res> implements $APIErrorCopyWith<$Res> {
  factory _$$_APIErrorCopyWith(
          _$_APIError value, $Res Function(_$_APIError) then) =
      __$$_APIErrorCopyWithImpl<$Res>;
  @override
  $Res call({String? systemMessage, String title, String content});
}

/// @nodoc
class __$$_APIErrorCopyWithImpl<$Res> extends _$APIErrorCopyWithImpl<$Res>
    implements _$$_APIErrorCopyWith<$Res> {
  __$$_APIErrorCopyWithImpl(
      _$_APIError _value, $Res Function(_$_APIError) _then)
      : super(_value, (v) => _then(v as _$_APIError));

  @override
  _$_APIError get _value => super._value as _$_APIError;

  @override
  $Res call({
    Object? systemMessage = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_APIError(
      systemMessage: systemMessage == freezed
          ? _value.systemMessage
          : systemMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_APIError extends _APIError {
  const _$_APIError(
      {this.systemMessage, required this.title, required this.content})
      : super._();

  factory _$_APIError.fromJson(Map<String, dynamic> json) =>
      _$$_APIErrorFromJson(json);

  @override
  final String? systemMessage;
  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'APIError(systemMessage: $systemMessage, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_APIError &&
            const DeepCollectionEquality()
                .equals(other.systemMessage, systemMessage) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(systemMessage),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_APIErrorCopyWith<_$_APIError> get copyWith =>
      __$$_APIErrorCopyWithImpl<_$_APIError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_APIErrorToJson(
      this,
    );
  }
}

abstract class _APIError extends APIError {
  const factory _APIError(
      {final String? systemMessage,
      required final String title,
      required final String content}) = _$_APIError;
  const _APIError._() : super._();

  factory _APIError.fromJson(Map<String, dynamic> json) = _$_APIError.fromJson;

  @override
  String? get systemMessage;
  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_APIErrorCopyWith<_$_APIError> get copyWith =>
      throw _privateConstructorUsedError;
}
