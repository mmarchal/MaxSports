import 'package:freezed_annotation/freezed_annotation.dart';

part 'poids.freezed.dart';
part 'poids.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Poids with _$Poids {
  const factory Poids({
    int? id,
    required DateTime date,
    required double poids,
  }) = _Poids;
  const Poids._();
  factory Poids.fromJson(Map<String, dynamic> json) => _$PoidsFromJson(json);
}
