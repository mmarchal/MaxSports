import 'package:bloc/bloc.dart';
import 'package:max_sports/data/entities/activite.dart';
import 'package:max_sports/data/entities/type_activite.dart';
import 'package:max_sports/data/repositories/activite_repository.dart';
import 'package:max_sports/data/states/activite_state.dart';

class ActiviteBloc extends Cubit<ActiviteState> {
  final ActiviteRepository activiteRepository;
  ActiviteBloc({
    required this.activiteRepository,
  }) : super(
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
        time: state.currentTime,
        distance: state.currentDistance,
      ),
    );
  }

  void selectTime(int time) async {
    emit(
      ActiviteState.inputTimeOfPractice(
        type: state.currentSelectedType,
        time: time,
        distance: state.currentDistance,
      ),
    );
  }

  void selectDistance(double distance) {
    emit(
      ActiviteState.inputDistanceOfPractice(
        type: state.currentSelectedType,
        time: state.currentTime,
        distance: distance,
      ),
    );
  }

  void addActivite(Activite activite) async {
    emit(
      ActiviteState.postActiviteLoading(
        activite: activite,
      ),
    );

    final response = await activiteRepository.postActivite(activite);

    if (response.isSuccess) {
      emit(
        ActiviteState.postActiviteLoaded(
          activite: response.data!,
        ),
      );
    } else {
      emit(
        ActiviteState.failed(
          error: response.error,
        ),
      );
    }
  }
}
