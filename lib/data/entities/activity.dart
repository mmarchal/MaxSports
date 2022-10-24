// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:max_sports/data/entities/type_activity.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Activity with _$Activity {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory Activity({
    int? id,
    required double distance,
    @JsonKey(name: 'temps') required double duration,
    @JsonKey(name: 'vitesseMoyenne') double? averageSpeed,
    required DateTime date,
    @JsonKey(name: 'typeActivite') required TypeActivity typeActivity,
  }) = _Activity;
  const Activity._();
  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}
