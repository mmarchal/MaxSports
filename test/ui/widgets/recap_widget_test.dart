import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/entities/recap.dart';
import 'package:max_sports/ui/widgets/recap_widget.dart';

void main() {
  final fakeRecap = Recap(
    poidsRecent: 70,
    dateRecent: DateTime(2022, 1, 1),
    poidsLate: 75,
    dateLate: DateTime(2022, 1, 2),
    difference: 5,
    etat: EtatPoids.gain,
  );
  testWidgets(
    'recap widget not null',
    (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RecapWidget(
              recap: fakeRecap,
            ),
          ),
        ),
      );
      expect(find.text("Aucun récapitulatif"), findsNothing);
      expect(find.text("Les 2 dernières mesures"), findsOneWidget);
    },
  );

  testWidgets(
    'recap widget null',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: RecapWidget(),
          ),
        ),
      );
      expect(find.text("Aucun récapitulatif"), findsOneWidget);
      expect(find.text("Les 2 dernières mesures"), findsNothing);
    },
  );
}
