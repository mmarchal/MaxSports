import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/ui/widgets/type_activite_card.dart';

import '../../fake_datas.dart';

void main() {
  HttpOverrides.global = null;

  testWidgets(
    'type activite card ...',
    (tester) async {
      HttpOverrides.global = null;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TypeActiviteCard(
              type: fakeTypeActivite,
              onTap: () {},
            ),
          ),
        ),
      );

      expect(find.text(fakeTypeActivite.type), findsOneWidget);
    },
  );
}
