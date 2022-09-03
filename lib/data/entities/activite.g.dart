// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Activite _$ActiviteFromJson(Map<String, dynamic> json) => Activite(
      id: json['id'] as int,
      distance: (json['distance'] as num).toDouble(),
      vitesseMoyenne: (json['vitesseMoyenne'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      typeActivite:
          TypeActivite.fromJson(json['typeActivite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActiviteToJson(Activite instance) => <String, dynamic>{
      'id': instance.id,
      'distance': instance.distance,
      'vitesseMoyenne': instance.vitesseMoyenne,
      'date': instance.date.toIso8601String(),
      'typeActivite': instance.typeActivite,
    };
