import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:max_sports/data/entities/activity.dart';
import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/type_activity.dart';

part 'activity_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ActivityState with _$ActivityState {
  const ActivityState._();

  factory ActivityState.initial() = ActivityStateInitial;

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
}
