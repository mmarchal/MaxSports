import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/blocs/navigation_bloc.dart';
import 'package:max_sports/data/states/navigation_state.dart';

import '../../fake_datas.dart';

void main() {
  group(
    'Navigation bloc',
    () {
      late NavigationBloc navigationBloc;

      setUp(
        () {
          navigationBloc = NavigationBloc();
        },
      );

      test(
        'initial state is idle',
        () {
          expect(
            navigationBloc.state,
            NavigationState.initial(),
          );
        },
      );

      blocTest<NavigationBloc, NavigationState>('reinit state',
          build: () => navigationBloc,
          act: (bloc) => bloc.reinitState(),
          expect: () => [
                NavigationState.initial(),
              ]);

      blocTest<NavigationBloc, NavigationState>(
        'get nav bar item',
        build: () => navigationBloc,
        act: (bloc) => bloc.getNavBarItem(fakeItem),
        expect: () => [
          NavigationState.initial(),
          NavigationState.getNavbarItem(
            index: 1,
            item: fakeItem,
          ),
        ],
      );
    },
  );
}
