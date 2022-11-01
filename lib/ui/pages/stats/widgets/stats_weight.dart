import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:max_design/objects/charts_data.dart';
import 'package:max_design/widgets/others/design_charts.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/data/blocs/stats_bloc.dart';
import 'package:max_sports/data/entities/weight.dart';
import 'package:max_sports/data/states/stats_state.dart';

class StatsWeight extends StatelessWidget {
  const StatsWeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatsBloc, StatsState>(
      builder: (context, state) {
        List<Weight>? _list = state.currentListOfWeight;
        if (_list != null) {
          DateFormat format = DateFormat('dd/MM/yyyy');
          List<ChartData> datas = _list
              .map(
                (e) => ChartData(format.format(e.date), e.poids),
              )
              .toList();
          return Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Card(
                elevation: 10,
                child: DesignCharts(
                  datas: datas,
                  chartType: ChartType.line,
                ),
              ),
            ),
          );
        } else {
          return const Center(
            child: DesignText(
              text: 'Aucune data enregistré !',
            ),
          );
        }
      },
    );
  }
}
