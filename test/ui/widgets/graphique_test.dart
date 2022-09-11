import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/entities/poids.dart';
import 'package:max_sports/ui/widgets/graphique.dart';

import '../../fake_datas.dart';

void main() {
  testWidgets(
    'graphique ...',
    (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Graphique(
              seriesList: [
                charts.Series<Poids, DateTime>(
                  id: 'Poids',
                  colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
                  domainFn: (Poids poids, _) => poids.date,
                  measureFn: (Poids poids, _) => poids.poids,
                  data: [
                    fakePoidsLast,
                  ],
                )
              ],
              animate: true,
            ),
          ),
        ),
      );

      expect(find.byType(charts.TimeSeriesChart), findsOneWidget);
    },
  );
}
