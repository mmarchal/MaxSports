import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/repositories/activity_repository.dart';
import 'package:max_sports/data/states/activity_state.dart';
import 'package:mockito/annotations.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';

import '../../fake_datas.dart';
import 'activity_bloc_test.mocks.dart';

@GenerateMocks([
  ActivityRepository,
])
void main() {
  group(
    'Activity bloc',
    () {
      late MockActivityRepository activityRepository;
      late ActivityBloc activityBloc;

      setUp(
        () {
          activityRepository = MockActivityRepository();
          activityBloc = ActivityBloc(activityRepository: activityRepository);
        },
      );

      test(
        'initial state is idle',
        () {
          expect(
            activityBloc.state,
            ActivityState.initial(),
          );
        },
      );

      blocTest<ActivityBloc, ActivityState>(
        'Set bloc idle',
        build: () => activityBloc,
        act: (bloc) => bloc.idle(),
        expect: () => [
          ActivityState.initial(),
        ],
      );

      blocTest<ActivityBloc, ActivityState>(
        'Select activite',
        build: () => activityBloc,
        act: (bloc) => bloc.selectActivity(fakeTypeActivity),
        expect: () => [
          ActivityState.selectActivityInDropDown(
            type: fakeTypeActivity,
          ),
        ],
      );

      blocTest<ActivityBloc, ActivityState>(
        'Select time',
        build: () => activityBloc,
        act: (bloc) => bloc.selectTime(10),
        expect: () => [
          ActivityState.inputTimeOfPractice(
            time: 10,
          ),
        ],
      );

      blocTest<ActivityBloc, ActivityState>(
        'Select distance',
        build: () => activityBloc,
        act: (bloc) => bloc.selectDistance(20.0),
        expect: () => [
          ActivityState.inputDistanceOfPractice(
            distance: 20.0,
          ),
        ],
      );

      blocTest<ActivityBloc, ActivityState>(
        'Post activite',
        build: () => activityBloc,
        setUp: () {
          when(activityRepository.postActivity(
            fakeActivitySuccess,
          )).thenAnswer(
            (realInvocation) => Future.value(
              SuccessResponse(200, fakeActivitySuccess),
            ),
          );
        },
        act: (bloc) => bloc.postActivity(),
        expect: () => [
          ActivityState.postActivityLoading(activite: fakeActivitySuccess),
          ActivityState.postActivityLoaded(activite: fakeActivitySuccess),
        ],
      );
    },
  );
}
