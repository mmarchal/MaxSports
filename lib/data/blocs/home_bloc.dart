import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/backend.dart';
import 'package:max_sports/data/states/home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc()
      : super(
          HomeState.initial(),
        );

  void idle() => emit(
        HomeState.initial(),
      );

  void getWeights() async {
    emit(
      HomeState.getWeightLoading(),
    );
    final response = await BackEnd().getLastWeight();
    final recap = await BackEnd().getLastTwoWeights();
    if (response.isSuccess && recap.isSuccess) {
      emit(
        HomeState.getWeightLoaded(
          poids: response.data!,
          recap: recap.data!,
        ),
      );
    } else {
      emit(
        HomeState.failed(
          error: response.error,
        ),
      );
    }
  }
}
