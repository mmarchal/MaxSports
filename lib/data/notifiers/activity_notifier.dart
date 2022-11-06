import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_sports/data/entities/activity.dart';
import 'package:max_sports/data/repositories/activity_repository.dart';

class ActivityNotifier extends StateNotifier<List<Activity>> {
  final ActivityRepository activityRepository;

  ActivityNotifier(this.activityRepository) : super([]);

  Future<void> getActivites() async {
    state = (await activityRepository.getActivities()).data ?? [];
  }

  Future<void> postActivity(Activity activity) async {
    final response = await activityRepository.postActivity(activity);

    if (response.isSuccess) {
      state = [...state, response.data!];
    } else {
      //TODO: Error management
    }
  }
}
