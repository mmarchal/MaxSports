import 'package:max_sports/data/backend_api.dart';
import 'package:max_sports/data/entities/activite.dart';
import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/entities/type_activite.dart';
import 'package:max_sports/data/error_type.dart';
import 'package:retrofit/retrofit.dart';

class ActiviteRepository {
  final BackendApi api;

  ActiviteRepository({
    required this.api,
  });

  Future<APIResponse<List<TypeActivite>?>> getTypesActivites() async {
    final response = await api.getTypesActivites();
    if (response.response.statusCode == 200) {
      return APIResponse(
        data: response.data
            .map<TypeActivite>((item) => TypeActivite.fromJson(item))
            .toList(),
        type: APIType.ok,
      );
    } else {
      return _errorFunction(response);
    }
  }

  Future<APIResponse<Activite?>> postActivite(Activite activite) async {
    final response = await api.saveActivite(activite: activite);
    if (response.response.statusCode == 200) {
      return APIResponse(
        data: Activite.fromJson(
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
