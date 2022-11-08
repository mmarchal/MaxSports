import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/blocs/type_activity_bloc.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/repositories/activity_repository.dart';
import 'package:max_sports/data/states/type_activity_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../fake_datas.dart';
import 'type_activity_bloc_test.mocks.dart';

@GenerateMocks([
  ActivityRepository,
])
void main() {
  group(
    'Type activite bloc',
    () {
      late MockActivityRepository activityRepository;
      late TypeActivityBloc typeActiviteBloc;

      setUp(
        () {
          activityRepository = MockActivityRepository();
          typeActiviteBloc =
              TypeActivityBloc(activityRepository: activityRepository);
        },
      );

      test(
        'initial state is idle',
        () {
          expect(
            typeActiviteBloc.state,
            TypeActivityState.initial(),
          );
        },
      );

      blocTest<TypeActivityBloc, TypeActivityState>(
        'idle',
        build: () => typeActiviteBloc,
        act: (bloc) => bloc.idle(),
        expect: () => [
          TypeActivityState.initial(),
        ],
      );

      group('get Types activites', () {
        blocTest<TypeActivityBloc, TypeActivityState>(
          'Success',
          build: () => typeActiviteBloc,
          setUp: () {
            when(activityRepository.getTypesActivities()).thenAnswer(
              (realInvocation) => Future.value(
                SuccessResponse(
                  200,
                  [fakeTypeActivity],
                ),
              ),
            );
          },
          act: (bloc) => bloc.getAllTypes(),
          expect: () => [
            TypeActivityState.getDatasLoading(),
            TypeActivityState.getDatasLoaded(
              types: [fakeTypeActivity],
            ),
          ],
        );

        blocTest<TypeActivityBloc, TypeActivityState>(
          'Failed',
          build: () => typeActiviteBloc,
          setUp: () {
            when(activityRepository.getTypesActivities()).thenAnswer(
              (realInvocation) => Future.value(
                FailResponse(500),
              ),
            );
          },
          act: (bloc) => bloc.getAllTypes(),
          expect: () => [
            TypeActivityState.getDatasLoading(),
            TypeActivityState.failed(),
          ],
        );
      });
    },
  );
}
