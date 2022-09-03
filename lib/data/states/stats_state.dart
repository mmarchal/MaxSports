import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/poids.dart';

part 'stats_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class StatsState with _$StatsState {
  const StatsState._();

  factory StatsState.initial() = StatsStateInitial;

  factory StatsState.getWeightsLoading() = StatsStateGetWeightsLoading;

  factory StatsState.getWeightsLoaded({
    required List<Poids> poids,
  }) = StatsStateGetWeightsLoaded;

  factory StatsState.failed({
    APIError? error,
  }) = StatsStateFailed;

  List<Poids>? get currentListOfWeight => maybeMap(
        initial: (value) => [],
        getWeightsLoading: (value) => [],
        getWeightsLoaded: (value) => value.poids,
        orElse: () => null,
      );
}
