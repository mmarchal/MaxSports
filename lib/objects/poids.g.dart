// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poids.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Poids _$PoidsFromJson(Map<String, dynamic> json) => Poids(
      id: json['id'] as int?,
      date: DateTime.parse(json['date'] as String),
      poids: (json['poids'] as num).toDouble(),
    );

Map<String, dynamic> _$PoidsToJson(Poids instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'poids': instance.poids,
    };
