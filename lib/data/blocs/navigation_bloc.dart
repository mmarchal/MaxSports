import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/core/utils/navbar_item.dart';
import 'package:max_sports/data/states/navigation_state.dart';

class NavigationBloc extends Cubit<NavigationState> {
  NavigationBloc() : super(NavigationState.initial());

//https://medium.com/@antoniodominikovic/implementing-in-app-navigation-with-the-flutter-bottom-navigation-bar-using-the-bloc-architecture-84cda9c74dda

  void reinitState() => emit(
        NavigationState.initial(),
      );

  void getNavBarItem(NavbarItem item) {
    reinitState();
    int indexReturn = 0;
    switch (item) {
      case NavbarItem.home:
        indexReturn = 0;
        break;
      case NavbarItem.poids:
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
