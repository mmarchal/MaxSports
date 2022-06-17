import 'package:json_annotation/json_annotation.dart';

part 'poids.g.dart';

@JsonSerializable()
class Poids {
  int? id;
  final DateTime date;
  final double poids;

  Poids({
    this.id,
    required this.date,
    required this.poids,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date,
      'poids': poids,
    };
  }

  factory Poids.fromJson(Map<String, dynamic> json) => _$PoidsFromJson(json);

  Map<String, dynamic> toJson() => _$PoidsToJson(this);
}
