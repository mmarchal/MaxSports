import 'package:freezed_annotation/freezed_annotation.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Config with _$Config {
  // ignore: invalid_annotation_target
  const factory Config({
    @Default("") String backendUrl,
    @Default("") String imageUrl,
    //IN THE NEXT SPRINT : ADD blockInfo and depart document
  }) = _Config;

  const Config._();

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
}
