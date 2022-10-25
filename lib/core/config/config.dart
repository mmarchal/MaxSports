import 'package:freezed_annotation/freezed_annotation.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Config with _$Config {
  const factory Config({
    @Default("") String backendUrl,
    @Default("") String imageUrl,
  }) = _Config;

  const Config._();

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
}
