import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:max_sports/data/entities/activity.dart';
import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/type_activity.dart';

part 'activity_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ActivityState with _$ActivityState {
  const ActivityState._();

  factory ActivityState.initial() = ActivityStateInitial;

  factory ActivityState.loading() = ActivityStateLoading;

  factory ActivityState.loaded({
    required List<Activity> activities,
  }) = ActivityStateLoaded;

  factory ActivityState.selectActivityInDropDown({
    required TypeActivity type,
    int? time,
    double? distance,
  }) = ActivityStateSelectActiviteInDropDown;

  factory ActivityState.inputTimeOfPractice({
    required int time,
    TypeActivity? type,
    double? distance,
  }) = ActivityStateInputTimeOfPractice;

  factory ActivityState.inputDistanceOfPractice({
    required double distance,
    int? time,
    TypeActivity? type,
  }) = ActivityStateInputDistanceOfPractice;

  factory ActivityState.postActivityLoading({
    required Activity activite,
  }) = ActivityStatePostActiviteLoading;

  factory ActivityState.postActivityLoaded({
    required Activity activite,
  }) = ActivityStatePostActiviteLoaded;

  factory ActivityState.failed({
    APIError? error,
  }) = ActivityStateFailed;

  List<Activity> get activities => maybeMap(
        loaded: (state) => state.activities,
        orElse: () => [],
      );

  int? get currentTime => maybeMap(
        initial: (value) => null,
        inputTimeOfPractice: (value) => value.time,
        selectActivityInDropDown: (value) => value.time,
        inputDistanceOfPractice: (value) => value.time,
        orElse: () => null,
      );

  double? get currentDistance => maybeMap(
        initial: (value) => null,
        inputTimeOfPractice: (value) => value.distance,
        selectActivityInDropDown: (value) => value.distance,
        inputDistanceOfPractice: (value) => value.distance,
        orElse: () => null,
      );

  TypeActivity? get currentSelectedType => maybeMap(
        initial: (value) => null,
        selectActivityInDropDown: (value) => value.type,
        inputTimeOfPractice: (value) => value.type,
        inputDistanceOfPractice: (value) => value.type,
        orElse: () => null,
      );

  bool get allDataIsFilled => maybeMap(
        initial: (value) => false,
        selectActivityInDropDown: (value) =>
            value.distance != null &&
            value.time != null &&
            currentSelectedType != null,
        inputTimeOfPractice: (value) =>
            value.distance != null && value.type != null && currentTime != null,
        inputDistanceOfPractice: (value) =>
            value.time != null && value.type != null && currentDistance != null,
        orElse: () => false,
      );

  // Calculate the average speed
  double get averageDistance => maybeMap(
        loaded: (value) {
          double total = 0;
          for (var element in value.activities) {
            total += element.distance;
          }
          return total / value.activities.length;
        },
        orElse: () => 0,
      );

  // Calculate the average time
  double get averageTime => maybeMap(
        loaded: (value) {
          double total = 0;
          for (var element in value.activities) {
            total += element.duration;
          }
          return total / value.activities.length;
        },
        orElse: () => 0,
      );

  // Get the favorite activity type
  TypeActivity? get favoriteActivityType => maybeMap(
        loaded: (value) {
          Map<TypeActivity, int> map = {};
          for (var element in value.activities) {
            if (map.containsKey(element.typeActivity)) {
              map[element.typeActivity] = map[element.typeActivity]! + 1;
            } else {
              map[element.typeActivity] = 1;
            }
          }
          TypeActivity? type;
          int? max = 0;
          map.forEach((key, value) {
            if (value > max!) {
              max = value;
              type = key;
            }
          });
          return type!;
        },
        orElse: () => null,
      );
}
