import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/core/utils/navbar_item.dart';
import 'package:max_sports/data/states/navigation_state.dart';

class NavigationBloc extends Cubit<NavigationState> {
  NavigationBloc()
      : super(
          NavigationState.initial(),
        );

  void reinitState() => emit(
        NavigationState.initial(),
      );

  void getNavBarItem(NavbarItem item) {
    reinitState();
    int indexReturn = 0;
    switch (item) {
      case NavbarItem.summary:
        indexReturn = 0;
        break;
      case NavbarItem.weight:
        indexReturn = 1;
        break;
      case NavbarItem.activite:
        indexReturn = 2;
        break;
      case NavbarItem.statistiques:
        indexReturn = 3;
        break;
    }
    emit(
      NavigationState.getNavbarItem(
        item: item,
        index: indexReturn,
      ),
    );
  }
}
