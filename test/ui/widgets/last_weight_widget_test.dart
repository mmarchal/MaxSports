import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/entities/weight.dart';
import 'package:max_sports/ui/widgets/last_weight_widget.dart';

void main() {
  final fakePoids = Weight(
    date: DateTime(2022, 1, 1),
    poids: 70,
  );
  testWidgets(
    'last weight widget not null',
    (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LastWeightWidget(
              poids: fakePoids,
            ),
          ),
        ),
      );

      expect(find.text("Aucun poids enregistré"), findsNothing);
      expect(find.text("Dernière prise de poids"), findsOneWidget);
    },
  );

  testWidgets(
    'last weight widget null',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: LastWeightWidget(),
          ),
        ),
      );

      expect(find.text("Aucun poids enregistré"), findsOneWidget);
      expect(find.text("Dernière prise de poids"), findsNothing);
    },
  );
}
