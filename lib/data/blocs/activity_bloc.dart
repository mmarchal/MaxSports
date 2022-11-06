import 'package:bloc/bloc.dart';
import 'package:max_sports/data/entities/type_activity.dart';
import 'package:max_sports/data/repositories/activity_repository.dart';
import 'package:max_sports/data/states/activity_state.dart';

class ActivityBloc extends Cubit<ActivityState> {
  final ActivityRepository activityRepository;
  ActivityBloc({
    required this.activityRepository,
  }) : super(
          ActivityState.initial(),
        );

  void idle() => emit(
        ActivityState.initial(),
      );

  void getActivities() async {
    emit(
      ActivityState.loading(),
    );
    final result = await activityRepository.getActivities();

    if (result.isSuccess) {
      emit(
        ActivityState.loaded(
          activities: result.data!,
        ),
      );
    } else {
      emit(
        ActivityState.failed(
          error: result.error,
        ),
      );
    }
  }

  void selectActivity(TypeActivity type) async {
    if (state is ActivityStateSelectActiviteInDropDown) {
      idle();
    }
    emit(
      ActivityState.selectActivityInDropDown(
        type: type,
        time: state.currentTime,
        distance: state.currentDistance,
      ),
    );
  }

  void selectTime(int time) async {
    emit(
      ActivityState.inputTimeOfPractice(
        type: state.currentSelectedType,
        time: time,
        distance: state.currentDistance,
      ),
    );
  }

  void selectDistance(double distance) {
    emit(
      ActivityState.inputDistanceOfPractice(
        type: state.currentSelectedType,
        time: state.currentTime,
        distance: distance,
      ),
    );
  }
}
