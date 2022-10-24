import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/repositories/activity_repository.dart';
import 'package:max_sports/data/states/type_activity_state.dart';

class TypeActivityBloc extends Cubit<TypeActivityState> {
  final ActivityRepository activityRepository;
  TypeActivityBloc({
    required this.activityRepository,
  }) : super(
          TypeActivityState.initial(),
        );

  void idle() => emit(
        TypeActivityState.initial(),
      );

  void getAllTypes() async {
    emit(
      TypeActivityState.getDatasLoading(),
    );

    final response = await activityRepository.getTypesActivities();

    if (response.isSuccess && response.data!.isNotEmpty) {
      emit(
        TypeActivityState.getDatasLoaded(
          types: response.data!,
        ),
      );
    } else {
      emit(
        TypeActivityState.failed(
          error: response.error,
        ),
      );
    }
  }
}
