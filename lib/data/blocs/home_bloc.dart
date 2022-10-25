import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/repositories/weight_repository.dart';
import 'package:max_sports/data/states/home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  final WeightRepository weightRepository;
  HomeBloc({
    required this.weightRepository,
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
    final response = await weightRepository.getLastWeight();
    final recap = await weightRepository.getLastTwoWeight();
    if (response.isSuccess && recap.isSuccess) {
      emit(
        HomeState.getWeightLoaded(
          weight: response.data!,
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
