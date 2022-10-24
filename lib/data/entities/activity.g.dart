// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Activity _$$_ActivityFromJson(Map<String, dynamic> json) => _$_Activity(
      id: json['id'] as int?,
      distance: (json['distance'] as num).toDouble(),
      duration: (json['temps'] as num).toDouble(),
      averageSpeed: (json['vitesseMoyenne'] as num?)?.toDouble(),
      date: DateTime.parse(json['date'] as String),
      typeActivity:
          TypeActivity.fromJson(json['typeActivite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ActivityToJson(_$_Activity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'distance': instance.distance,
      'temps': instance.duration,
      'vitesseMoyenne': instance.averageSpeed,
      'date': instance.date.toIso8601String(),
      'typeActivite': instance.typeActivity.toJson(),
    };
