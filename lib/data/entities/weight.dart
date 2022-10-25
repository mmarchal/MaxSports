import 'package:freezed_annotation/freezed_annotation.dart';

part 'weight.freezed.dart';
part 'weight.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Weight with _$Weight {
  const factory Weight({
    int? id,
    required DateTime date,
    required double poids,
  }) = _Weight;
  const Weight._();
  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
}
