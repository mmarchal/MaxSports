// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poids.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Poids _$PoidsFromJson(Map<String, dynamic> json) => Poids(
      id: json['id'] as int,
      datePrise: json['datePrise'] as String,
      mesure: (json['mesure'] as num).toDouble(),
      differenceDernierePrise:
          (json['differenceDernierePrise'] as num).toDouble(),
    );

Map<String, dynamic> _$PoidsToJson(Poids instance) => <String, dynamic>{
      'id': instance.id,
      'datePrise': instance.datePrise,
      'mesure': instance.mesure,
      'differenceDernierePrise': instance.differenceDernierePrise,
    };
