// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_APIError _$$_APIErrorFromJson(Map<String, dynamic> json) => _$_APIError(
      systemMessage: json['systemMessage'] as String?,
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_APIErrorToJson(_$_APIError instance) =>
    <String, dynamic>{
      'systemMessage': instance.systemMessage,
      'title': instance.title,
      'content': instance.content,
    };
