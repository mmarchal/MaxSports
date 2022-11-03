import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_sports/data/entities/activity.dart';
import 'package:max_sports/data/repositories/activity_repository.dart';

class ActivityNotifier extends StateNotifier<List<Activity>> {
  final ActivityRepository activityRepository;

  ActivityNotifier(this.activityRepository) : super([]);

  Future<void> getActivites() async {
    final activities = await activityRepository.getActivities();
    state.addAll(
      activities.data ?? [],
    );
  }

  Future<void> postActivity(Activity activity) async {
    final response = await activityRepository.postActivity(activity);
    state = [...state, response.data!];
  }
}
