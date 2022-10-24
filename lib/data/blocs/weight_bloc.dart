import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/weight.dart';
import 'package:max_sports/data/repositories/weight_repository.dart';
import 'package:max_sports/data/states/weight_state.dart';

class WeightBloc extends Cubit<WeightState> {
  final WeightRepository weightRepository;
  WeightBloc({
    required this.weightRepository,
  }) : super(
          WeightState.initial(),
        );

  void idle() => emit(
        WeightState.initial(),
      );

  void sendWeight(Weight weight) async {
    emit(
      WeightState.sendWeightLoading(),
    );

    if (weight.date.toString() != '' && weight.poids != 0.0) {
      final response = await weightRepository.postWeight(weight);

      if (response.isSuccess) {
        emit(
          WeightState.sendWeightLoaded(),
        );
      } else {
        emit(
          WeightState.failed(
            error: response.error,
          ),
        );
      }
    } else {
      emit(
        WeightState.failed(
          error: const APIError(
            title: 'Erreur',
            content: "La date et le poids doivent être renseigné !",
            systemMessage: '',
          ),
        ),
      );
    }
  }
}
