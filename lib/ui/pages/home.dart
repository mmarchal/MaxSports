import 'package:flutter/material.dart';
import 'package:max_sports/core/utils/menu_list.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  int selectedIndex = 0;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        onTap: (index) => _onTap(index),
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
