import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:max_design/objects/charts_data.dart';
import 'package:max_design/widgets/others/design_charts.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/providers.dart';

class StatsWeight extends ConsumerWidget {
  const StatsWeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(listWeight);
    if (list.isNotEmpty) {
      DateFormat format = DateFormat('dd/MM/yyyy');
      List<ChartData> datas = list
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
  }
}
