import 'package:flutter/material.dart';
import 'package:max_sports/back-end/backend.dart';
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
  List<Poids> list = [];

  @override
  void initState() {
    super.initState();
    BackEnd().getPoids().then((value) {
      setState(() {
        list = value.data ?? [];
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
                charts.Series<Poids, DateTime>(
                  id: 'Poids',
                  colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
                  domainFn: (Poids poids, _) => DateTime.parse(poids.datePrise),
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
