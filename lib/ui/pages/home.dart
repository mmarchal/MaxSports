import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/core/utils/menu_list.dart';
import 'package:max_sports/core/utils/navbar_item.dart';
import 'package:max_sports/data/blocs/navigation_bloc.dart';
import 'package:max_sports/data/states/navigation_state.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);

  NavbarItem _getNavItem(int index) {
    switch (index) {
      case 0:
        return NavbarItem.home;
      case 1:
        return NavbarItem.poids;
      case 2:
        return NavbarItem.activite;
      case 3:
        return NavbarItem.statistiques;
      default:
        return NavbarItem.home;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (blocContext, blocState) {
        int selectedIndex = blocContext.read<NavigationBloc>().state.currentIndex;
        return Scaffold(
          appBar: AppBar(
            title: Text(items[selectedIndex].title),
            centerTitle: true,
            backgroundColor: items[selectedIndex].color,
          ),
          body: items[selectedIndex].redirection,
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.black,
            currentIndex: selectedIndex,
            onTap: (index) =>
                context.read<NavigationBloc>().getNavBarItem(
                  _getNavItem(index),
                ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
            selectedLabelStyle: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
            items: items
                .map(
                  (item) =>
                  BottomNavigationBarItem(
                    icon: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          width: 1.0,
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        item.icon,
                        color: Colors.black,
                      ),
                    ),
                    label: item.title,
                  ),
            )
                .toList(),
          ),
        );
      },
    );
  }
}
