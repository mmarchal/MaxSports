import 'package:json_annotation/json_annotation.dart';

part 'poids.g.dart';

@JsonSerializable()
class Poids {
  final int id;
  final DateTime datePrise;
  final double mesure;
  final double differenceDernierePrise;

  Poids({
    required this.id,
    required this.datePrise,
    required this.mesure,
    required this.differenceDernierePrise,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'datePrise': datePrise,
      'mesure': mesure,
      'differenceDernierePrise': differenceDernierePrise,
    };
  }

  factory Poids.fromJson(Map<String, dynamic> json) => _$PoidsFromJson(json);

  Map<String, dynamic> toJson() => _$PoidsToJson(this);
}
