import 'package:flutter/material.dart';
import 'package:max_sports/database.dart';
import 'package:max_sports/objects/poids.dart';

class StatsPage extends StatefulWidget {

  const StatsPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StatsPageState();
  }

}

class StatsPageState extends State<StatsPage> {
  final db = DBProvider();
  List<Poids> list = [];

  @override
  void initState() {
    super.initState();
    db.getAllDatas("Poids").then((value) {
      setState(() {
        list = value as List<Poids>;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.separated(
          itemBuilder: (context, i) => ListTile(
            title: Text(list[i].datePrise),
            subtitle: Text(list[i].mesure.toString()),
          ),
          separatorBuilder: (context, i) {
            return const Divider();
          },
          itemCount: list.length,
        ),
      ),
    );
  }
}
