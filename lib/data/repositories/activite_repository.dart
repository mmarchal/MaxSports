import 'package:max_sports/data/backend_api.dart';
import 'package:max_sports/data/entities/activite.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/entities/type_activite.dart';
import 'package:max_sports/data/error_type.dart';

class ActiviteRepository {
  final BackendApi api;

  ActiviteRepository({
    required this.api,
  });

  Future<APIResponse<List<TypeActivite>?>> getTypesActivites() async {
    final response = await api.getTypesActivites();
    if (response.response.statusCode == 200) {
      return SuccessResponse(
        200,
        response.data
            .map<TypeActivite>((item) => TypeActivite.fromJson(item))
            .toList(),
      );
    } else {
      return errorFunction(response);
    }
  }

  Future<APIResponse<Activite?>> postActivite(Activite activite) async {
    final response = await api.saveActivite(activite: activite);
    if (response.response.statusCode == 200) {
      return SuccessResponse(
        200,
        Activite.fromJson(
          response.data as Map<String, dynamic>,
        ),
      );
    } else {
      return errorFunction(response);
    }
  }
}
