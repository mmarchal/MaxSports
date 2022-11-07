import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/error_type.dart';

enum APIType {
  ok,
  network,
  server,
  client,
  unauthorized,
  forbidden,
  notFound,
  invalid,
  timeout,
  conflict,
  invalidData,
  unsupportedMediaType,
}

abstract class APIResponse<T> {
  final T? data;
  final APIError? error;
  final APIType? type;

  APIResponse({this.data, this.type, this.error});

  bool get isSuccess => type == APIType.ok && error == null;

  bool get hasInternet => type != APIType.network;
}

class SuccessResponse<T> extends APIResponse<T> {
  SuccessResponse(int apiStatus, T data)
      : super(type: getAPIType(apiStatus), data: data);
}

class FailResponse<T> extends APIResponse<T> {
  FailResponse(int apiStatus, {APIError? error})
      : super(type: getAPIType(apiStatus), error: error);
}
