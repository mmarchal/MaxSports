import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/backend.dart';
import 'package:max_sports/data/states/backend_state.dart';

class BackendBloc extends Cubit<BackendState> {
  BackendBloc()
      : super(
          BackendState.initial(),
        );

  void idle() => emit(
        BackendState.initial(),
      );

  void getWeights() async {
    emit(
      BackendState.getWeightLoading(),
    );
    final response = await BackEnd().getLastWeight();
    final recap = await BackEnd().getLastTwoWeights();
    if (response.isSuccess && recap.isSuccess) {
      emit(
        BackendState.getWeightLoaded(
          poids: response.data!,
          recap: recap.data!,
        ),
      );
    } else {
      emit(
        BackendState.failed(
          error: response.error,
        ),
      );
    }
  }
}
