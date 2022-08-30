import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:max_sports/objects/type_activite.dart';
import 'package:max_sports/utils/custom_shared.dart';

class ActivitePage extends StatefulWidget {
  const ActivitePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ActivitePageState();
  }
}

class ActivitePageState extends State<ActivitePage> {
  List<TypeActivite> types = [];
  List<TypeActivite> selectedTypeList = [];

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
                        selectedTypeList = List.filled(selectedValue, types[0]);
                      },
                    );
                  },
                ),
              ),
            );
          }),
        ),
        (selectedValue != 0)
            ? Expanded(
                child: Container(
                  margin: const EdgeInsets.all(16),
                  child: ListView.builder(
                    itemCount: selectedValue,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            DropdownButton(
                              value: selectedTypeList[index],
                              items: types
                                  .map(
                                    (TypeActivite e) =>
                                        DropdownMenuItem<TypeActivite>(
                                      value: e,
                                      child: Text(e.type),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (TypeActivite? type) {
                                setState(() {
                                  selectedTypeList[index] = type!;
                                });
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            : const SizedBox(),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.verified),
          label: const Text("Voir résultat"),
        )
      ],
    );
  }
}
