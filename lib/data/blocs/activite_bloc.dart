import 'package:bloc/bloc.dart';
import 'package:max_sports/data/entities/type_activite.dart';
import 'package:max_sports/data/states/activite_state.dart';

class ActiviteBloc extends Cubit<ActiviteState> {
  ActiviteBloc()
      : super(
          ActiviteState.initial(),
        );

  void idle() => emit(
        ActiviteState.initial(),
      );

  void selectActivite(TypeActivite type) async {
    if (state is ActiviteStateSelectActiviteInDropDown) {
      idle();
    }
    emit(
      ActiviteState.selectActiviteInDropDown(
        type: type,
      ),
    );
  }

  void selectTime(int time) async {
    emit(
      ActiviteState.inputTimeOfPractice(
        time: time,
      ),
    );
  }
}
