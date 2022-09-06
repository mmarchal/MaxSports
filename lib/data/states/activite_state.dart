import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:max_sports/data/entities/type_activite.dart';

part 'activite_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ActiviteState with _$ActiviteState {
  const ActiviteState._();

  factory ActiviteState.initial() = ActiviteStateInitial;

  factory ActiviteState.selectActiviteInDropDown({
    required TypeActivite type,
  }) = ActiviteStateSelectActiviteInDropDown;

  factory ActiviteState.inputTimeOfPractice({
    required int time,
  }) = ActiviteStateInputTimeOfPractice;

  int? get currentTime => maybeMap(
        initial: (value) => null,
        inputTimeOfPractice: (value) => value.time,
        orElse: () => null,
      );

  TypeActivite? get currentSelectedType => maybeMap(
        initial: (value) => null,
        selectActiviteInDropDown: (value) => value.type,
        orElse: () => null,
      );
}
