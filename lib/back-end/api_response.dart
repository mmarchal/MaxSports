import 'package:max_sports/back-end/api_error.dart';

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

class APIResponse<T> {
  final T? data;
  final APIError? error;
  final APIType? type;

  APIResponse({this.data, this.type, this.error});

  bool get isSuccess => error == null;

  bool get hasInternet => type != APIType.network;
}
