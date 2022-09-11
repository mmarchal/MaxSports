// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Activite _$$_ActiviteFromJson(Map<String, dynamic> json) => _$_Activite(
      id: json['id'] as int?,
      distance: (json['distance'] as num).toDouble(),
      temps: (json['temps'] as num).toDouble(),
      vitesseMoyenne: (json['vitesseMoyenne'] as num?)?.toDouble(),
      date: DateTime.parse(json['date'] as String),
      typeActivite:
          TypeActivite.fromJson(json['typeActivite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ActiviteToJson(_$_Activite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'distance': instance.distance,
      'temps': instance.temps,
      'vitesseMoyenne': instance.vitesseMoyenne,
      'date': instance.date.toIso8601String(),
      'typeActivite': instance.typeActivite.toJson(),
    };
