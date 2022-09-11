// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:max_sports/data/entities/type_activite.dart';

part 'activite.freezed.dart';
part 'activite.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Activite with _$Activite {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory Activite({
    int? id,
    required double distance,
    required double temps,
    double? vitesseMoyenne,
    required DateTime date,
    required TypeActivite typeActivite,
  }) = _Activite;
  const Activite._();
  factory Activite.fromJson(Map<String, dynamic> json) =>
      _$ActiviteFromJson(json);
}
