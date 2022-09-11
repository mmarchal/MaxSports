import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/blocs/stats_bloc.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/repositories/poids_repository.dart';
import 'package:max_sports/data/states/stats_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../fake_datas.dart';
import 'stats_bloc_test.mocks.dart';

@GenerateMocks([
  PoidsRepository,
])
void main() {
  group(
    'Stats bloc',
    () {
      late MockPoidsRepository poidsRepository;
      late StatsBloc statsBloc;

      setUp(
        () {
          poidsRepository = MockPoidsRepository();
          statsBloc = StatsBloc(poidsRepository: poidsRepository);
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

      blocTest<StatsBloc, StatsState>(
        'get Weight',
        build: () => statsBloc,
        setUp: () {
          when(poidsRepository.getPoids()).thenAnswer(
            (realInvocation) => Future.value(
              SuccessResponse(
                200,
                [fakePoidsLast],
              ),
            ),
          );
        },
        act: (bloc) => bloc.getAllWeights(),
        expect: () => [
          StatsState.getWeightsLoading(),
          StatsState.getWeightsLoaded(
            poids: [fakePoidsLast],
          ),
        ],
      );
    },
  );
}
