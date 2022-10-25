import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/type_activity.dart';

part 'type_activity_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class TypeActivityState with _$TypeActivityState {
  const TypeActivityState._();

  factory TypeActivityState.initial() = TypeActivityStateInitial;

  factory TypeActivityState.getDatasLoading() =
      TypeActivityStateGetDatasLoading;

  factory TypeActivityState.getDatasLoaded({
    required List<TypeActivity> types,
  }) = TypeActivityStateGetDatasLoaded;

  factory TypeActivityState.failed({
    APIError? error,
  }) = TypeActivityStateFailed;

  List<TypeActivity>? get currentListOfActivitesTypes => maybeMap(
        initial: (value) => [],
        getDatasLoading: (value) => [],
        getDatasLoaded: (value) => value.types,
        orElse: () => null,
      );
}
