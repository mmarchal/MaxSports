import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_sports/core/utils/menu_list.dart';
import 'package:max_sports/core/utils/navbar_item.dart';
import 'package:max_sports/providers.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  NavbarItem _getNavItem(int index) {
    switch (index) {
      case 0:
        return NavbarItem.summary;
      case 1:
        return NavbarItem.weight;
      case 2:
        return NavbarItem.activity;
      case 3:
        return NavbarItem.stats;
      default:
        return NavbarItem.summary;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedIndex = ref.watch(navigationProvider);
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
        onTap: (index) => ref.read(navigationProvider.notifier).getNavbarItem(
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
              (item) => BottomNavigationBarItem(
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
  }
}
