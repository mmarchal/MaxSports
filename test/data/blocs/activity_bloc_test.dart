import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';
import 'package:max_sports/data/entities/activity.dart';
import 'package:max_sports/data/entities/api_error.dart';
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
        'Select activity Success',
        build: () => activityBloc,
        act: (bloc) => bloc.selectActivity(fakeTypeActivity),
        expect: () => [
          ActivityState.selectActivityInDropDown(
            type: fakeTypeActivity,
          ),
        ],
      );

      blocTest<ActivityBloc, ActivityState>(
        'Select activity State is Dropdown',
        build: () => activityBloc,
        seed: () => ActivityState.selectActivityInDropDown(
          type: fakeTypeActivity,
        ),
        act: (bloc) => bloc.selectActivity(fakeTypeActivity),
        expect: () => [
          ActivityState.initial(),
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
        'Get activities success',
        build: () => activityBloc,
        act: (bloc) {
          when(activityRepository.getActivities()).thenAnswer(
            (_) async => SuccessResponse(
              200,
              [fakeActivitySuccess],
            ),
          );
          bloc.getActivities();
        },
        expect: () => [
          ActivityState.loading(),
          ActivityState.loaded(
            activities: [fakeActivitySuccess],
          ),
        ],
      );

      blocTest<ActivityBloc, ActivityState>(
        'Get activities success',
        build: () => activityBloc,
        act: (bloc) {
          when(activityRepository.getActivities()).thenAnswer(
            (_) async => FailResponse(
              500,
              error: const APIError(
                title: 'title',
                content: 'content',
              ),
            ),
          );
          bloc.getActivities();
        },
        expect: () => [
          ActivityState.loading(),
          ActivityState.failed(
              error: const APIError(
            title: 'title',
            content: 'content',
          )),
        ],
      );

      group(
        'Post activity',
        () {
          Activity activity = Activity(
            typeActivity: fakeTypeActivity,
            duration: 10,
            distance: 20.0,
            date: DateTime(2020, 1, 1),
          );
          blocTest<ActivityBloc, ActivityState>(
            'Success',
            build: () => activityBloc
              ..initDatas(
                activity.duration.toInt(),
                activity.distance,
                fakeTypeActivity,
              ),
            act: (bloc) {
              when(activityRepository.postActivity(activity)).thenAnswer(
                (_) async => SuccessResponse(
                  200,
                  activity,
                ),
              );
              bloc.postActivity(activity.date);
            },
            expect: () => [
              ActivityState.postActivityLoading(
                activite: activity,
              ),
              ActivityState.postActivityLoaded(
                activite: activity,
              ),
            ],
          );

          blocTest<ActivityBloc, ActivityState>(
            'Api error',
            build: () => activityBloc
              ..initDatas(
                activity.duration.toInt(),
                activity.distance,
                fakeTypeActivity,
              ),
            act: (bloc) {
              when(activityRepository.postActivity(activity)).thenAnswer(
                (_) async => FailResponse(
                  500,
                ),
              );
              bloc.postActivity(activity.date);
            },
            expect: () => [
              ActivityState.postActivityLoading(
                activite: activity,
              ),
              ActivityState.failed(),
            ],
          );

          blocTest<ActivityBloc, ActivityState>(
            'Failed',
            build: () => activityBloc,
            seed: () => ActivityState.selectActivityInDropDown(
              type: fakeTypeActivity,
            ),
            act: (bloc) {
              when(activityRepository.postActivity(fakeActivitySuccess))
                  .thenAnswer(
                (_) async => SuccessResponse(
                  200,
                  fakeActivitySuccess,
                ),
              );
              bloc.postActivity(activity.date);
            },
            expect: () => [
              ActivityState.failed(
                  error: const APIError(
                title: 'Erreur',
                content:
                    'Le type, le temps d\'exercice et la distance doivent être renseigné !',
              )),
            ],
          );
        },
      );
    },
  );
}
