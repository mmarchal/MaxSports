import 'dart:convert';

import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Activité"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: (types.isNotEmpty)
            ? GridView.builder(
                itemCount: types.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return TypeActiviteCard(
                    type: types[index],
                  );
                },
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
