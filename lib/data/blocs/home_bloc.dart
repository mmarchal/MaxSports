import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/repositories/poids_repository.dart';
import 'package:max_sports/data/states/home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  final PoidsRepository poidsRepository;
  HomeBloc({
    required this.poidsRepository,
  }) : super(
          HomeState.initial(),
        );

  void idle() => emit(
        HomeState.initial(),
      );

  void getWeights() async {
    emit(
      HomeState.getWeightLoading(),
    );
    final response = await poidsRepository.getLastWeight();
    final recap = await poidsRepository.getLastTwoWeight();
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
