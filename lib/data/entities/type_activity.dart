import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_activity.freezed.dart';
part 'type_activity.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class TypeActivity with _$TypeActivity {
  const factory TypeActivity({
    int? id,
    required String type,
    required String imagePath,
  }) = _TypeActivity;
  const TypeActivity._();
  factory TypeActivity.fromJson(Map<String, dynamic> json) =>
      _$TypeActivityFromJson(json);
}
