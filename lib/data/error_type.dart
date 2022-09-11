import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:retrofit/retrofit.dart';

getAPIType(int statusCode) {
  switch (statusCode) {
    case 200:
      return APIType.ok;
    case 400:
      return APIType.invalid;
    case 401:
      return APIType.unauthorized;
    case 403:
      return APIType.forbidden;
    case 404:
      return APIType.notFound;
    case 409:
      return APIType.conflict;
    case 415:
      return APIType.unsupportedMediaType;
    case 422:
      return APIType.invalidData;
    case 500:
      return APIType.server;
    case 502:
      return APIType.timeout;
  }
}

errorFunction(HttpResponse<dynamic> error) {
  return FailResponse(
    error.response.statusCode!,
    error: const APIError(
      title: 'Erreur',
      content: 'Une erreur est survenue',
    ),
  );
}
