// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Activite _$ActiviteFromJson(Map<String, dynamic> json) => Activite(
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      machine: json['machine'] as String,
      repetition: json['repetition'] as int,
      poidsSouleve: (json['poidsSouleve'] as num).toDouble(),
      kilometre: (json['kilometre'] as num).toDouble(),
      duree: (json['duree'] as num).toDouble(),
    );

Map<String, dynamic> _$ActiviteToJson(Activite instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'machine': instance.machine,
      'repetition': instance.repetition,
      'poidsSouleve': instance.poidsSouleve,
      'kilometre': instance.kilometre,
      'duree': instance.duree,
    };
