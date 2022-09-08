// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recap _$RecapFromJson(Map<String, dynamic> json) => Recap(
      poidsRecent: (json['poidsRecent'] as num).toDouble(),
      dateRecent: DateTime.parse(json['dateRecent'] as String),
      poidsLate: (json['poidsLate'] as num).toDouble(),
      dateLate: DateTime.parse(json['dateLate'] as String),
      difference: (json['difference'] as num).toDouble(),
      etat: $enumDecode(_$EtatPoidsEnumMap, json['etat']),
    );

Map<String, dynamic> _$RecapToJson(Recap instance) => <String, dynamic>{
      'poidsRecent': instance.poidsRecent,
      'dateRecent': instance.dateRecent.toIso8601String(),
      'poidsLate': instance.poidsLate,
      'dateLate': instance.dateLate.toIso8601String(),
      'difference': instance.difference,
      'etat': _$EtatPoidsEnumMap[instance.etat]!,
    };

const _$EtatPoidsEnumMap = {
  EtatPoids.GAIN: 'GAIN',
  EtatPoids.PERTE: 'PERTE',
};
