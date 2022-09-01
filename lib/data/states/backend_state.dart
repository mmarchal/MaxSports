import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/poids.dart';
import 'package:max_sports/data/entities/recap.dart';

part 'backend_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class BackendState with _$BackendState {
  const BackendState._();

  factory BackendState.initial() = BackendStateInitial;

  factory BackendState.getWeightLoading() = BackendStateGetWeightLoading;

  factory BackendState.getWeightLoaded({
    required Poids poids,
    required Recap recap,
  }) = BackendStateGetWeightLoaded;

  factory BackendState.failed({
    APIError? error,
  }) = BackendStateFailed;
}
