import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/poids.dart';
import 'package:max_sports/data/entities/recap.dart';

part 'home_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class HomeState with _$HomeState {
  const HomeState._();

  factory HomeState.initial() = HomeStateInitial;

  factory HomeState.getWeightLoading() = HomeStateGetWeightLoading;

  factory HomeState.getWeightLoaded({
    required Poids poids,
    required Recap recap,
  }) = HomeStateGetWeightLoaded;

  factory HomeState.failed({
    APIError? error,
  }) = HomeStateFailed;

  Poids? get currentLastPoids => maybeMap(
        getWeightLoading: (value) => null,
        getWeightLoaded: (value) => value.poids,
        failed: (value) => value.currentLastPoids,
        orElse: () => null,
      );

  Recap? get currentRecap => maybeMap(
        getWeightLoading: (value) => null,
        getWeightLoaded: (value) => value.recap,
        failed: (value) => value.currentRecap,
        orElse: () => null,
      );
}
