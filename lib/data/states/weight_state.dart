import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:max_sports/data/entities/api_error.dart';

part 'weight_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class WeightState with _$WeightState {
  const WeightState._();

  factory WeightState.initial() = WeightStateInitial;

  factory WeightState.sendWeightLoading() = WeightStateSendPoidsLoading;

  factory WeightState.sendWeightLoaded() = WeightStateSendPoidsLoaded;

  factory WeightState.failed({
    APIError? error,
  }) = WeightStateFailed;
}
