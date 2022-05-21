import 'package:json_annotation/json_annotation.dart';

part 'activite.g.dart';

@JsonSerializable()
class Activite {
  final int id;
  final DateTime date;
  final String machine;
  final int repetition;
  final double poidsSouleve;
  final double kilometre;
  final double duree;

  Activite({
    required this.id,
    required this.date,
    required this.machine,
    required this.repetition,
    required this.poidsSouleve,
    required this.kilometre,
    required this.duree,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date,
      'machine': machine,
      'repetition': repetition,
      'poidsSouleve': poidsSouleve,
      'kilometre': kilometre,
      'duree': duree,
    };
  }

  factory Activite.fromJson(Map<String, dynamic> json) =>
      _$ActiviteFromJson(json);

  Map<String, dynamic> toJson() => _$ActiviteToJson(this);
}
