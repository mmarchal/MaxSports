import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';
part 'api_error.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class APIError with _$APIError {
  const factory APIError({
    String? systemMessage,
    required String title,
    required String content,
  }) = _APIError;
  const APIError._();
  factory APIError.fromJson(Map<String, dynamic> json) =>
      _$APIErrorFromJson(json);
}
