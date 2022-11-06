import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_sports/data/entities/type_activity.dart';
import 'package:max_sports/data/repositories/activity_repository.dart';

class TypeActivityNotifier extends StateNotifier<List<TypeActivity>> {
  final ActivityRepository activityRepository;

  TypeActivityNotifier(this.activityRepository) : super([]);

  Future<void> getTypesOfActivites() async {
    state = (await activityRepository.getTypesActivities()).data ?? [];
  }
}
