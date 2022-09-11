import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/blocs/poids_bloc.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/repositories/poids_repository.dart';
import 'package:max_sports/data/states/poids_state.dart';
import 'package:mockito/annotations.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';

import '../../fake_datas.dart';
import 'poids_bloc_test.mocks.dart';

@GenerateMocks([
  PoidsRepository,
])
void main() {
  group(
    'Poids bloc',
    () {
      late MockPoidsRepository repository;
      late PoidsBloc poidsBloc;

      setUp(
        () {
          repository = MockPoidsRepository();
          poidsBloc = PoidsBloc(
            poidsRepository: repository,
          );
        },
      );

      test(
        'initial state is idle',
        () {
          expect(
            poidsBloc.state,
            PoidsState.initial(),
          );
        },
      );

      blocTest<PoidsBloc, PoidsState>(
        'Set bloc idle',
        build: () => poidsBloc,
        act: (bloc) => bloc.idle(),
        expect: () => [
          PoidsState.initial(),
        ],
      );

      group(
        'Post poids',
        () {
          blocTest<PoidsBloc, PoidsState>(
            'Success',
            build: () => poidsBloc,
            setUp: () {
              when(repository.postPoids(
                fakePoidsLast,
              )).thenAnswer(
                (realInvocation) => Future.value(
                  SuccessResponse(200, fakePoidsLast),
                ),
              );
            },
            act: (bloc) => bloc.sendPoids(fakePoidsLast),
            expect: () => [
              PoidsState.sendPoidsLoading(),
              PoidsState.sendPoidsLoaded(),
            ],
          );

          blocTest<PoidsBloc, PoidsState>(
            'Poids 0.0',
            build: () => poidsBloc,
            act: (bloc) => bloc.sendPoids(fakePoidsWithZero),
            expect: () => [
              PoidsState.sendPoidsLoading(),
              PoidsState.failed(
                error: genericError,
              ),
            ],
          );
        },
      );
    },
  );
}
