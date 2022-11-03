import 'package:max_sports/data/backend_api.dart';
import 'package:max_sports/data/entities/activity.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/entities/type_activity.dart';
import 'package:max_sports/data/error_type.dart';

class ActivityRepository {
  final BackendApi api;

  ActivityRepository({
    required this.api,
  });

  Future<APIResponse<List<TypeActivity>?>> getTypesActivities() async {
    final response = await api.getTypesActivities();
    if (response.response.statusCode == 200) {
      return SuccessResponse(
        200,
        response.data
            .map<TypeActivity>((item) => TypeActivity.fromJson(item))
            .toList(),
      );
    } else {
      return errorHttp(response);
    }
  }

  Future<APIResponse<Activity?>> postActivity(Activity activity) async {
    final response = await api.saveActivity(activity: activity);
    if (response.response.statusCode == 200) {
      return SuccessResponse(
        200,
        Activity.fromJson(
          response.data as Map<String, dynamic>,
        ),
      );
    } else {
      return errorHttp(response);
    }
  }

  Future<APIResponse<List<Activity>?>> getActivities() async {
    final response = await api.getActivities();
    if (response.response.statusCode == 200) {
      return SuccessResponse(
        200,
        response.data.map<Activity>((item) => Activity.fromJson(item)).toList(),
      );
    } else {
      return errorHttp(response);
    }
  }
}
