import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_sports/core/utils/navbar_item.dart';

class NavigationNotifier extends StateNotifier<int> {
  NavigationNotifier() : super(0);

  void getNavbarItem(NavbarItem item) {
    int indexReturn = 0;
    switch (item) {
      case NavbarItem.summary:
        indexReturn = 0;
        break;
      case NavbarItem.weight:
        indexReturn = 1;
        break;
      case NavbarItem.activity:
        indexReturn = 2;
        break;
      case NavbarItem.stats:
        indexReturn = 3;
        break;
    }
    state = indexReturn;
  }
}
