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
        'get nav bar item weight',
        build: () => navigationBloc,
        act: (bloc) => bloc.getNavBarItem(fakeItemWeight),
        expect: () => [
          NavigationState.initial(),
          NavigationState.getNavbarItem(
            index: 1,
            item: fakeItemWeight,
          ),
        ],
      );

      blocTest<NavigationBloc, NavigationState>(
        'get nav bar item activity',
        build: () => navigationBloc,
        act: (bloc) => bloc.getNavBarItem(fakeItemActivity),
        expect: () => [
          NavigationState.initial(),
          NavigationState.getNavbarItem(
            index: 2,
            item: fakeItemActivity,
          ),
        ],
      );

      blocTest<NavigationBloc, NavigationState>(
        'get nav bar item stats',
        build: () => navigationBloc,
        act: (bloc) => bloc.getNavBarItem(fakeItemStats),
        expect: () => [
          NavigationState.initial(),
          NavigationState.getNavbarItem(
            index: 3,
            item: fakeItemStats,
          ),
        ],
      );
    },
  );
}
