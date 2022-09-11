import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/blocs/type_activite_bloc.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/repositories/activite_repository.dart';
import 'package:max_sports/data/states/type_activite_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../fake_datas.dart';
import 'type_activite_bloc_test.mocks.dart';

@GenerateMocks([
  ActiviteRepository,
])
void main() {
  group(
    'Type activite bloc',
    () {
      late MockActiviteRepository activiteRepository;
      late TypeActiviteBloc typeActiviteBloc;

      setUp(
        () {
          activiteRepository = MockActiviteRepository();
          typeActiviteBloc =
              TypeActiviteBloc(activiteRepository: activiteRepository);
        },
      );

      test(
        'initial state is idle',
        () {
          expect(
            typeActiviteBloc.state,
            TypeActiviteState.initial(),
          );
        },
      );

      blocTest<TypeActiviteBloc, TypeActiviteState>(
        'idle',
        build: () => typeActiviteBloc,
        act: (bloc) => bloc.idle(),
        expect: () => [
          TypeActiviteState.initial(),
        ],
      );

      blocTest<TypeActiviteBloc, TypeActiviteState>(
        'get Types activites',
        build: () => typeActiviteBloc,
        setUp: () {
          when(activiteRepository.getTypesActivites()).thenAnswer(
            (realInvocation) => Future.value(
              SuccessResponse(
                200,
                [fakeTypeActivite],
              ),
            ),
          );
        },
        act: (bloc) => bloc.getAllTypes(),
        expect: () => [
          TypeActiviteState.getDatasLoading(),
          TypeActiviteState.getDatasLoaded(
            types: [fakeTypeActivite],
          ),
        ],
      );
    },
  );
}
