import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/blocs/stats_bloc.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/repositories/weight_repository.dart';
import 'package:max_sports/data/states/stats_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../fake_datas.dart';
import 'stats_bloc_test.mocks.dart';

@GenerateMocks([
  WeightRepository,
])
void main() {
  group(
    'Stats bloc',
    () {
      late MockWeightRepository weightRepository;
      late StatsBloc statsBloc;

      setUp(
        () {
          weightRepository = MockWeightRepository();
          statsBloc = StatsBloc(poidsRepository: weightRepository);
        },
      );

      test(
        'initial state is idle',
        () {
          expect(
            statsBloc.state,
            StatsState.initial(),
          );
        },
      );

      blocTest<StatsBloc, StatsState>('idle',
          build: () => statsBloc,
          act: (bloc) => bloc.idle(),
          expect: () => [
                StatsState.initial(),
              ]);

      group('get Weight', () {
        blocTest<StatsBloc, StatsState>(
          'Success',
          build: () => statsBloc,
          setUp: () {
            when(weightRepository.getWeight()).thenAnswer(
              (realInvocation) => Future.value(
                SuccessResponse(
                  200,
                  [fakeWeightLast],
                ),
              ),
            );
          },
          act: (bloc) => bloc.getAllWeights(),
          expect: () => [
            StatsState.getWeightsLoading(),
            StatsState.getWeightsLoaded(
              weight: [fakeWeightLast],
            ),
          ],
        );

        blocTest<StatsBloc, StatsState>(
          'Failed',
          build: () => statsBloc,
          setUp: () {
            when(weightRepository.getWeight()).thenAnswer(
              (realInvocation) => Future.value(
                FailResponse(500),
              ),
            );
          },
          act: (bloc) => bloc.getAllWeights(),
          expect: () => [
            StatsState.getWeightsLoading(),
            StatsState.failed(),
          ],
        );
      });
    },
  );
}
