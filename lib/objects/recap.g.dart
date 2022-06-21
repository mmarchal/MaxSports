// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recap _$RecapFromJson(Map<String, dynamic> json) => Recap(
      poids0: (json['poids0'] as num).toDouble(),
      date0: DateTime.parse(json['date0'] as String),
      poids1: (json['poids1'] as num).toDouble(),
      date1: DateTime.parse(json['date1'] as String),
      difference: (json['difference'] as num).toDouble(),
      etat: $enumDecode(_$EtatPoidsEnumMap, json['etat']),
    );

Map<String, dynamic> _$RecapToJson(Recap instance) => <String, dynamic>{
      'poids0': instance.poids0,
      'date0': instance.date0.toIso8601String(),
      'poids1': instance.poids1,
      'date1': instance.date1.toIso8601String(),
      'difference': instance.difference,
      'etat': _$EtatPoidsEnumMap[instance.etat],
    };

const _$EtatPoidsEnumMap = {
  EtatPoids.GAIN: 'GAIN',
  EtatPoids.PERTE: 'PERTE',
};
