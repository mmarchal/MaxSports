import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/blocs/stats_bloc.dart';
import 'package:max_sports/data/entities/poids.dart';
import 'package:max_sports/data/states/stats_state.dart';
import 'package:max_sports/ui/pages/statistique/stats_page_provider.dart';
import 'package:max_sports/ui/widgets/graphique.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class StatsPage extends StatelessWidget {
  const StatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatsPageProvider(
      child: BlocBuilder<StatsBloc, StatsState>(
        builder: (context, state) {
          List<Poids>? _list = state.currentListOfWeight;
          if (_list != null) {
            return Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: Card(
                  elevation: 10,
                  child: Graphique(
                    seriesList: [
                      charts.Series<Poids, DateTime>(
                        id: 'Poids',
                        colorFn: (_, __) =>
                            charts.MaterialPalette.blue.shadeDefault,
                        domainFn: (Poids poids, _) => poids.date,
                        measureFn: (Poids poids, _) => poids.poids,
                        data: _list,
                      ),
                    ],
                    animate: true,
                  ),
                ),
              ),
            );
          } else {
            return const Center(
              child: Text('Aucune data enregistré !'),
            );
          }
        },
      ),
    );
  }
}
