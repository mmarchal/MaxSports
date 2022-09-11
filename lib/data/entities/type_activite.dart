import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_activite.freezed.dart';
part 'type_activite.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class TypeActivite with _$TypeActivite {
  const factory TypeActivite({
    int? id,
    required String type,
    required String imagePath,
  }) = _TypeActivite;
  const TypeActivite._();
  factory TypeActivite.fromJson(Map<String, dynamic> json) =>
      _$TypeActiviteFromJson(json);
}
