import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:max_sports/activite_detail_page.dart';
import 'package:max_sports/objects/activite.dart';
import 'package:max_sports/objects/type_activite.dart';
import 'package:max_sports/utils/custom_shared.dart';
import 'package:max_sports/widgets/type_activite_card.dart';

class ActivitePage extends StatefulWidget {
  const ActivitePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ActivitePageState();
  }
}

class ActivitePageState extends State<ActivitePage> {
  List<TypeActivite> types = [];

  int selectedValue = 0;

  @override
  void initState() {
    super.initState();
    CustomShared.getList("typesActivites").then((value) {
      if (value != null) {
        setState(() {
          types = value.map(
            (e) {
              return TypeActivite.fromJson(jsonDecode(e));
            },
          ).toList();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: (types.isNotEmpty)
            ? bodyWidget()
            : const CircularProgressIndicator(),
      ),
    );
  }

  Widget bodyWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Choisissez le nombre d'activité effectué ce jour : ",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: List.generate(3, (index) {
            index++;
            return Expanded(
              child: ListTile(
                title: Text(index.toString()),
                leading: Radio(
                  value: index,
                  groupValue: selectedValue,
                  onChanged: (int? changed) {
                    setState(
                      () {
                        selectedValue = changed!;
                      },
                    );
                  },
                ),
              ),
            );
          }),
        ),
        Visibility(
          visible: selectedValue != 0,
          child: Expanded(
            child: GridView.count(
              crossAxisCount: selectedValue,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 8.0,
              children: List.generate(
                selectedValue,
                (index) => Card(
                  elevation: 10,
                  child: Text(index.toString()),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
