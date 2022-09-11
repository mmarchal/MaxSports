import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/blocs/home_bloc.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/repositories/poids_repository.dart';
import 'package:max_sports/data/states/home_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../fake_datas.dart';
import 'home_bloc_test.mocks.dart';

@GenerateMocks([
  PoidsRepository,
])
void main() {
  group(
    'Home bloc',
    () {
      late MockPoidsRepository poidsRepository;
      late HomeBloc homeBloc;

      setUp(
        () {
          poidsRepository = MockPoidsRepository();
          homeBloc = HomeBloc(poidsRepository: poidsRepository);
        },
      );

      test(
        'initial state is idle',
        () {
          expect(
            homeBloc.state,
            HomeState.initial(),
          );
        },
      );

      blocTest<HomeBloc, HomeState>('idle',
          build: () => homeBloc,
          act: (bloc) => bloc.idle(),
          expect: () => [
                HomeState.initial(),
              ]);

      blocTest<HomeBloc, HomeState>(
        'get Weight',
        build: () => homeBloc,
        setUp: () {
          when(poidsRepository.getLastWeight()).thenAnswer(
            (realInvocation) => Future.value(
              SuccessResponse(
                200,
                fakePoidsLast,
              ),
            ),
          );
          when(poidsRepository.getLastTwoWeight()).thenAnswer(
            (realInvocation) => Future.value(
              SuccessResponse(
                200,
                fakeRecap,
              ),
            ),
          );
        },
        act: (bloc) => bloc.getWeights(),
        expect: () => [
          HomeState.getWeightLoading(),
          HomeState.getWeightLoaded(
            poids: fakePoidsLast,
            recap: fakeRecap,
          ),
        ],
      );
    },
  );
}
