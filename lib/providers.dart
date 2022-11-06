import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_design/objects/charts_data.dart';
import 'package:max_sports/core/config/config.dart';
import 'package:max_sports/data/backend_api.dart';
import 'package:max_sports/data/entities/activity.dart';
import 'package:max_sports/data/entities/recap.dart';
import 'package:max_sports/data/entities/type_activity.dart';
import 'package:max_sports/data/entities/weight.dart';
import 'package:max_sports/data/notifiers/activity_notifier.dart';
import 'package:max_sports/data/notifiers/navigation_notifier.dart';
import 'package:max_sports/data/notifiers/resume_notifier.dart';
import 'package:max_sports/data/notifiers/stats_notifier.dart';
import 'package:max_sports/data/notifiers/type_activity_notifier.dart';
import 'package:max_sports/data/notifiers/weight_notifier.dart';
import 'package:max_sports/data/repositories/activity_repository.dart';
import 'package:max_sports/data/repositories/weight_repository.dart';

final configProvider = Provider<Config>(
  (ref) => Config.fromJson(
    {},
  ),
);

final dioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  ),
);

final backendProvider = Provider<BackendApi>(
  (ref) => BackendApi(
    ref.read(dioProvider),
  ),
);

final weightRepoProvider = Provider<WeightRepository>(
  (ref) => WeightRepository(
    api: ref.read(
      backendProvider,
    ),
  ),
);

final activityRepoProvider = Provider<ActivityRepository>(
  (ref) => ActivityRepository(
    api: ref.read(
      backendProvider,
    ),
  ),
);

final navigationProvider = StateNotifierProvider<NavigationNotifier, int>(
  (ref) => NavigationNotifier(),
);

final weightProvider = StateNotifierProvider<WeightNotifier, List<Weight>>(
  (ref) => WeightNotifier(
    ref.read(weightRepoProvider),
  ),
);

final resumeProvider = StateNotifierProvider<ResumeNotifier, Recap?>(
  (ref) => ResumeNotifier(
    ref.read(weightRepoProvider),
  )..getResumeWeight(),
);

final statsProvider = StateNotifierProvider<StatsNotifier, List<ChartData>>(
  (ref) => StatsNotifier(
    ref.read(weightRepoProvider),
  ),
);

final activityProvider =
    StateNotifierProvider<ActivityNotifier, List<Activity>>(
  (ref) => ActivityNotifier(
    ref.read(
      activityRepoProvider,
    ),
  ),
);

final typeActivitiesProvider =
    StateNotifierProvider<TypeActivityNotifier, List<TypeActivity>>(
  (ref) => TypeActivityNotifier(
    ref.read(
      activityRepoProvider,
    ),
  ),
);

final lastWeight = Provider<Weight>((ref) {
  final listWeight = ref.watch(weightProvider);

  return listWeight.last;
});

final resumeWeight = Provider<Recap?>((ref) {
  return ref.watch(resumeProvider);
});

final statsWeight = Provider<List<ChartData>>((ref) {
  return ref.watch(statsProvider);
});

final listOfActivites = Provider<List<Activity>>((ref) {
  return ref.watch(activityProvider);
});

final listOfTypeActivites = Provider<List<TypeActivity>>((ref) {
  return ref.watch(typeActivitiesProvider);
});

final defaultTypeOfActivity = Provider<TypeActivity>((ref) {
  return ref.watch(listOfTypeActivites).first;
});
