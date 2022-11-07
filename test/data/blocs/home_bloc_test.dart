import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/blocs/home_bloc.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/repositories/weight_repository.dart';
import 'package:max_sports/data/states/home_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../fake_datas.dart';
import 'weight_bloc_test.mocks.dart';

@GenerateMocks([
  WeightRepository,
])
void main() {
  group(
    'Home bloc',
    () {
      late MockWeightRepository weightRepository;
      late HomeBloc homeBloc;

      setUp(
        () {
          weightRepository = MockWeightRepository();
          homeBloc = HomeBloc(weightRepository: weightRepository);
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
        'get Weight success',
        build: () => homeBloc,
        setUp: () {
          when(weightRepository.getLastWeight()).thenAnswer(
            (realInvocation) => Future.value(
              SuccessResponse(
                200,
                fakeWeightLast,
              ),
            ),
          );
          when(weightRepository.getLastTwoWeight()).thenAnswer(
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
            weight: fakeWeightLast,
            recap: fakeRecap,
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'get Weight failed',
        build: () => homeBloc,
        setUp: () {
          when(weightRepository.getLastWeight()).thenAnswer(
            (realInvocation) => Future.value(
              FailResponse(
                500,
              ),
            ),
          );
          when(weightRepository.getLastTwoWeight()).thenAnswer(
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
          HomeState.failed(),
        ],
      );
    },
  );
}
