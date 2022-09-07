import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/repositories/poids_repository.dart';
import 'package:max_sports/data/states/stats_state.dart';

class StatsBloc extends Cubit<StatsState> {
  final PoidsRepository poidsRepository;
  StatsBloc({
    required this.poidsRepository,
  }) : super(StatsState.initial());

  void idle() => emit(
        StatsState.initial(),
      );

  void getAllWeights() async {
    emit(
      StatsState.getWeightsLoading(),
    );

    final response = await poidsRepository.getPoids();

    if (response.isSuccess && response.data!.isNotEmpty) {
      emit(
        StatsState.getWeightsLoaded(
          poids: response.data!,
        ),
      );
    } else {
      emit(
        StatsState.failed(
          error: response.error,
        ),
      );
    }
  }
}
