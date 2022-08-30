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
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        child: Card(
          elevation: 10,
          child: Graphique(
            seriesList: [
              charts.Series<Poids, DateTime>(
                id: 'Poids',
                colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
                domainFn: (Poids poids, _) => poids.date,
                measureFn: (Poids poids, _) => poids.poids,
                data: list,
              ),
            ],
            animate: true,
          ),
        ),
      ),
    );
  }
}
