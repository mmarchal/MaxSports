// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weight _$$_WeightFromJson(Map<String, dynamic> json) => _$_Weight(
      id: json['id'] as int?,
      date: DateTime.parse(json['date'] as String),
      poids: (json['poids'] as num).toDouble(),
    );

Map<String, dynamic> _$$_WeightToJson(_$_Weight instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'poids': instance.poids,
    };
