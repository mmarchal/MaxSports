import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:max_sports/data/entities/api_error.dart';

part 'poids_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class PoidsState with _$PoidsState {
  const PoidsState._();

  factory PoidsState.initial() = PoidsStateInitial;

  factory PoidsState.sendPoidsLoading() = PoidsStateSendPoidsLoading;

  factory PoidsState.sendPoidsLoaded() = PoidsStateSendPoidsLoaded;

  factory PoidsState.failed({
    APIError? error,
  }) = PoidsStateFailed;
}
