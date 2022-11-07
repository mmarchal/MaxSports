import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/blocs/weight_bloc.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/repositories/weight_repository.dart';
import 'package:max_sports/data/states/weight_state.dart';
import 'package:mockito/annotations.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';

import '../../fake_datas.dart';
import 'poids_bloc_test.mocks.dart';

@GenerateMocks([
  WeightRepository,
])
void main() {
  group(
    'Poids bloc',
    () {
      late MockPoidsRepository repository;
      late WeightBloc weightBloc;

      setUp(
        () {
          repository = MockPoidsRepository();
          weightBloc = WeightBloc(
            weightRepository: repository,
          );
        },
      );

      test(
        'initial state is idle',
        () {
          expect(
            weightBloc.state,
            WeightState.initial(),
          );
        },
      );

      blocTest<WeightBloc, WeightState>(
        'Set bloc idle',
        build: () => weightBloc,
        act: (bloc) => bloc.idle(),
        expect: () => [
          WeightState.initial(),
        ],
      );

      group(
        'Post poids',
        () {
          blocTest<WeightBloc, WeightState>(
            'Success',
            build: () => weightBloc,
            setUp: () {
              when(repository.postWeight(
                fakeWeightLast,
              )).thenAnswer(
                (realInvocation) => Future.value(
                  SuccessResponse(200, fakeWeightLast),
                ),
              );
            },
            act: (bloc) => bloc.sendWeight(fakeWeightLast),
            expect: () => [
              WeightState.sendWeightLoading(),
              WeightState.sendWeightLoaded(),
            ],
          );

          blocTest<WeightBloc, WeightState>(
            'Poids 0.0',
            build: () => weightBloc,
            act: (bloc) => bloc.sendWeight(fakePoidsWithZero),
            expect: () => [
              WeightState.sendWeightLoading(),
              WeightState.failed(
                error: genericError,
              ),
            ],
          );

          blocTest<WeightBloc, WeightState>(
            'Failed',
            build: () => weightBloc,
            setUp: () {
              when(repository.postWeight(
                fakeWeightLast,
              )).thenAnswer(
                (realInvocation) => Future.value(
                  FailResponse(400),
                ),
              );
            },
            act: (bloc) => bloc.sendWeight(fakeWeightLast),
            expect: () => [
              WeightState.sendWeightLoading(),
              WeightState.failed(),
            ],
          );
        },
      );
    },
  );
}
