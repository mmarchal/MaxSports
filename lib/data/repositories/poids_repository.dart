import 'package:max_sports/data/backend_api.dart';
import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/entities/poids.dart';
import 'package:max_sports/data/entities/recap.dart';
import 'package:max_sports/data/error_type.dart';
import 'package:retrofit/dio.dart';

class PoidsRepository {
  final BackendApi api;

  PoidsRepository({
    required this.api,
  });

  Future<APIResponse<List<Poids>>> getPoids() async {
    final response = await api.getPoids();
    if (response.response.statusCode == 200) {
      return APIResponse(
        data: response.data.map<Poids>((item) => Poids.fromJson(item)).toList(),
        type: APIType.ok,
      );
    } else {
      return _errorFunction(response);
    }
  }

  Future<APIResponse<Poids?>> postPoids(Poids poids) async {
    final response = await api.savePoids(poids: poids);
    if (response.response.statusCode == 200) {
      return APIResponse(
        data: Poids.fromJson(
          response.data as Map<String, dynamic>,
        ),
        type: APIType.ok,
      );
    } else {
      return _errorFunction(response);
    }
  }

  Future<APIResponse<Poids?>> getLastWeight() async {
    final response = await api.getLastPoids();
    if (response.response.statusCode == 200) {
      return APIResponse(
        data: Poids.fromJson(
          response.data as Map<String, dynamic>,
        ),
        type: APIType.ok,
      );
    } else {
      return _errorFunction(response);
    }
  }

  Future<APIResponse<Recap?>> getLastTwoWeight() async {
    final response = await api.getLastTwoPoids();
    if (response.response.statusCode == 200) {
      return APIResponse(
        data: Recap.fromJson(
          response.data as Map<String, dynamic>,
        ),
        type: APIType.ok,
      );
    } else {
      return _errorFunction(response);
    }
  }

  _errorFunction(HttpResponse<dynamic> error) {
    return APIResponse(
      type: getAPIType(error.response.statusCode!),
      error: APIError(
        systemMessage: error.data,
        title: 'Erreur',
        content: 'Une erreur est survenue',
      ),
    );
  }
}
