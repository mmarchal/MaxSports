import 'package:max_sports/data/backend_api.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/entities/weight.dart';
import 'package:max_sports/data/entities/recap.dart';
import 'package:max_sports/data/error_type.dart';

class WeightRepository {
  final BackendApi api;

  WeightRepository({
    required this.api,
  });

  Future<APIResponse<List<Weight>>> getWeight() async {
    final response = await api.getWeight();
    if (response.response.statusCode == 200) {
      return SuccessResponse(
        200,
        response.data.map<Weight>((item) => Weight.fromJson(item)).toList(),
      );
    } else {
      return errorFunction(response);
    }
  }

  Future<APIResponse<Weight?>> postWeight(Weight weight) async {
    final response = await api.saveWeight(weight: weight);
    if (response.response.statusCode == 200) {
      return SuccessResponse(
        200,
        Weight.fromJson(
          response.data as Map<String, dynamic>,
        ),
      );
    } else {
      return errorFunction(response);
    }
  }

  Future<APIResponse<Weight?>> getLastWeight() async {
    final response = await api.getLastWeight();
    if (response.response.statusCode == 200) {
      return SuccessResponse(
        200,
        Weight.fromJson(
          response.data as Map<String, dynamic>,
        ),
      );
    } else {
      return errorFunction(response);
    }
  }

  Future<APIResponse<Recap?>> getLastTwoWeight() async {
    final response = await api.getLastTwoWeight();
    if (response.response.statusCode == 200) {
      Map<String, dynamic> json = {
        'poidsRecent': response.data['poidsRecent'],
        'dateRecent': response.data['dateRecent'],
        'poidsLate': response.data['poidsLate'],
        'dateLate': response.data['dateLate'],
        'difference': response.data['difference'],
        'etat': response.data['etat'].toString().toLowerCase(),
      };
      return SuccessResponse(
        200,
        Recap.fromJson(json),
      );
    } else {
      return errorFunction(response);
    }
  }
}
