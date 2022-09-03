import 'package:json_annotation/json_annotation.dart';
import 'package:max_sports/data/entities/type_activite.dart';

part 'activite.g.dart';

@JsonSerializable()
class Activite {
  final int id;
  final double distance;
  final double vitesseMoyenne;
  final DateTime date;
  final TypeActivite typeActivite;

  factory Activite.fromJson(Map<String, dynamic> json) =>
      _$ActiviteFromJson(json);

  Map<String, dynamic> toJson() => _$ActiviteToJson(this);

  Activite({
    required this.id,
    required this.distance,
    required this.vitesseMoyenne,
    required this.date,
    required this.typeActivite,
  });
}
