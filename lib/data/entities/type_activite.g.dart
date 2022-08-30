// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_activite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeActivite _$TypeActiviteFromJson(Map<String, dynamic> json) => TypeActivite(
      id: json['id'] as int,
      type: json['type'] as String,
      imagePath: json['imagePath'] as String,
    );

Map<String, dynamic> _$TypeActiviteToJson(TypeActivite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'imagePath': instance.imagePath,
    };
