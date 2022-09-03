import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/type_activite.dart';

part 'type_activite_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class TypeActiviteState with _$TypeActiviteState {
  const TypeActiviteState._();

  factory TypeActiviteState.initial() = TypeActiviteStateInitial;

  factory TypeActiviteState.getDatasLoading() =
      TypeActiviteStateGetDatasLoading;

  factory TypeActiviteState.getDatasLoaded({
    required List<TypeActivite> types,
  }) = TypeActiviteStateGetDatasLoaded;

  factory TypeActiviteState.failed({
    APIError? error,
  }) = TypeActiviteStateFailed;

  List<TypeActivite>? get currentListOfActivitesTypes => maybeMap(
        initial: (value) => [],
        getDatasLoading: (value) => [],
        getDatasLoaded: (value) => value.types,
        orElse: () => null,
      );
}
