import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/blocs/activite_bloc.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/repositories/activite_repository.dart';
import 'package:max_sports/data/states/activite_state.dart';
import 'package:mockito/annotations.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';

import '../../fake_datas.dart';
import 'activite_bloc_test.mocks.dart';

@GenerateMocks([
  ActiviteRepository,
])
void main() {
  group(
    'Activite bloc',
    () {
      late MockActiviteRepository activiteRepository;
      late ActiviteBloc activiteBloc;

      setUp(
        () {
          activiteRepository = MockActiviteRepository();
          activiteBloc = ActiviteBloc(activiteRepository: activiteRepository);
        },
      );

      test(
        'initial state is idle',
        () {
          expect(
            activiteBloc.state,
            ActiviteState.initial(),
          );
        },
      );

      blocTest<ActiviteBloc, ActiviteState>(
        'Set bloc idle',
        build: () => activiteBloc,
        act: (bloc) => bloc.idle(),
        expect: () => [
          ActiviteState.initial(),
        ],
      );

      blocTest<ActiviteBloc, ActiviteState>(
        'Select activite',
        build: () => activiteBloc,
        act: (bloc) => bloc.selectActivite(fakeTypeActivite),
        expect: () => [
          ActiviteState.selectActiviteInDropDown(
            type: fakeTypeActivite,
          ),
        ],
      );

      blocTest<ActiviteBloc, ActiviteState>(
        'Select time',
        build: () => activiteBloc,
        act: (bloc) => bloc.selectTime(10),
        expect: () => [
          ActiviteState.inputTimeOfPractice(
            time: 10,
          ),
        ],
      );

      blocTest<ActiviteBloc, ActiviteState>(
        'Select distance',
        build: () => activiteBloc,
        act: (bloc) => bloc.selectDistance(20.0),
        expect: () => [
          ActiviteState.inputDistanceOfPractice(
            distance: 20.0,
          ),
        ],
      );

      blocTest<ActiviteBloc, ActiviteState>(
        'Post activite',
        build: () => activiteBloc,
        setUp: () {
          when(activiteRepository.postActivite(
            fakeActiviteSuccess,
          )).thenAnswer(
            (realInvocation) => Future.value(
              SuccessResponse(200, fakeActiviteSuccess),
            ),
          );
        },
        act: (bloc) => bloc.addActivite(fakeActiviteSuccess),
        expect: () => [
          ActiviteState.postActiviteLoading(activite: fakeActiviteSuccess),
          ActiviteState.postActiviteLoaded(activite: fakeActiviteSuccess),
        ],
      );
    },
  );
}
