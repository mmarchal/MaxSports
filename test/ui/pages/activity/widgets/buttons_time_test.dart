import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/ui/pages/activity/widgets/buttons_time.dart';

void main() {
  testWidgets(
    'buttons time ...',
    (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: ButtonsTime(
            onButtonSelected: (int index) {},
          ),
        ),
      );
      expect(find.byType(ElevatedButton), findsWidgets);
    },
  );
}
