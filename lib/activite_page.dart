import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class ActivitePage extends StatelessWidget {
  ActivitePage({Key? key}) : super(key: key);

  final List<String> activits = [
    "Musculation",
    "Tapis de course",
    "Vélo elliptique",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GroupButton(
            isRadio: true,
            onSelected: (String s, int i, bool b) => print(s),
            buttons: activits,
          ),
        ],
      ),
    );
  }
}
