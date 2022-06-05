import 'package:flutter/material.dart';
import 'package:max_sports/database.dart';
import 'package:max_sports/objects/poids.dart';
import 'package:max_sports/widgets/graphique.dart';
import 'package:charts_flutter/flutter.dart' as charts;

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
      appBar: AppBar(
        title: const Text("Statistiques"),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: Card(
            elevation: 10,
            child: Graphique(
              seriesList: [
                charts.Series<Poids, int>(
                  id: 'Poids',
                  colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
                  domainFn: (Poids poids, _) => poids.id,
                  measureFn: (Poids poids, _) => poids.mesure,
                  data: list,
                ),
              ],
              animate: true,
            ),
          ),
        ),
      ),
    );
  }
}
