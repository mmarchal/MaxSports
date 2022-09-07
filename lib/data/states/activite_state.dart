import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:max_sports/data/entities/activite.dart';
import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/type_activite.dart';

part 'activite_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ActiviteState with _$ActiviteState {
  const ActiviteState._();

  factory ActiviteState.initial() = ActiviteStateInitial;

  factory ActiviteState.selectActiviteInDropDown({
    required TypeActivite type,
    int? time,
    double? distance,
  }) = ActiviteStateSelectActiviteInDropDown;

  factory ActiviteState.inputTimeOfPractice({
    required int time,
    TypeActivite? type,
    double? distance,
  }) = ActiviteStateInputTimeOfPractice;

  factory ActiviteState.inputDistanceOfPractice({
    required double distance,
    int? time,
    TypeActivite? type,
  }) = ActiviteStateInputDistanceOfPractice;

  factory ActiviteState.postActiviteLoading({
    required Activite activite,
  }) = ActiviteStatePostActiviteLoading;

  factory ActiviteState.postActiviteLoaded({
    required Activite activite,
  }) = ActiviteStatePostActiviteLoaded;

  factory ActiviteState.failed({
    APIError? error,
  }) = ActiviteStateFailed;

  int? get currentTime => maybeMap(
        initial: (value) => null,
        inputTimeOfPractice: (value) => value.time,
        selectActiviteInDropDown: (value) => value.time,
        inputDistanceOfPractice: (value) => value.time,
        orElse: () => null,
      );

  double? get currentDistance => maybeMap(
        initial: (value) => null,
        inputTimeOfPractice: (value) => value.distance,
        selectActiviteInDropDown: (value) => value.distance,
        inputDistanceOfPractice: (value) => value.distance,
        orElse: () => null,
      );

  TypeActivite? get currentSelectedType => maybeMap(
        initial: (value) => null,
        selectActiviteInDropDown: (value) => value.type,
        inputTimeOfPractice: (value) => value.type,
        inputDistanceOfPractice: (value) => value.type,
        orElse: () => null,
      );
}
