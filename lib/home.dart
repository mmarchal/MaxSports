import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:max_sports/back-end/backend.dart';
import 'package:max_sports/utils/custom_shared.dart';
import 'package:max_sports/utils/menu_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    BackEnd().getTypesActivites().then((value) {
      if (value.isSuccess && value.data != null) {
        List<String> convertList =
            value.data!.map((e) => jsonEncode(e)).toList();
        CustomShared.setList("typesActivites", convertList);
      }
    });
  }

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

  _onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
