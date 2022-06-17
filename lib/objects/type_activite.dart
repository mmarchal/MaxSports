import 'package:json_annotation/json_annotation.dart';

part 'type_activite.g.dart';

@JsonSerializable()
class TypeActivite {
  final int id;
  final String type;
  final String imagePath;

  factory TypeActivite.fromJson(Map<String, dynamic> json) =>
      _$TypeActiviteFromJson(json);

  Map<String, dynamic> toJson() => _$TypeActiviteToJson(this);

  TypeActivite({
    required this.id,
    required this.type,
    required this.imagePath,
  });
}
