import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/poids.dart';
import 'package:max_sports/data/repositories/poids_repository.dart';
import 'package:max_sports/data/states/poids_state.dart';

class PoidsBloc extends Cubit<PoidsState> {
  final PoidsRepository poidsRepository;
  PoidsBloc({
    required this.poidsRepository,
  }) : super(
          PoidsState.initial(),
        );

  void idle() => emit(
        PoidsState.initial(),
      );

  void sendPoids(Poids poids) async {
    emit(
      PoidsState.sendPoidsLoading(),
    );

    if (poids.date.toString() != '' && poids.poids != 0.0) {
      final response = await poidsRepository.postPoids(poids);

      if (response.isSuccess) {
        emit(
          PoidsState.sendPoidsLoaded(),
        );
      } else {
        emit(
          PoidsState.failed(
            error: response.error,
          ),
        );
      }
    } else {
      emit(
        PoidsState.failed(
          error: APIError(
            title: 'Erreur',
            content: "La date et le poids doivent être renseigné !",
            systemMessage: '',
          ),
        ),
      );
    }
  }
}
