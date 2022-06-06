import 'package:json_annotation/json_annotation.dart';

part 'poids.g.dart';

@JsonSerializable()
class Poids {
  final int id;
  final String datePrise;
  final double mesure;

  Poids({
    required this.id,
    required this.datePrise,
    required this.mesure,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'datePrise': datePrise,
      'mesure': mesure,
    };
  }

  factory Poids.fromJson(Map<String, dynamic> json) => _$PoidsFromJson(json);

  Map<String, dynamic> toJson() => _$PoidsToJson(this);
}
