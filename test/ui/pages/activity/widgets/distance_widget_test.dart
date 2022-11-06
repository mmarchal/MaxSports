import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/ui/pages/activity_v2/widgets/measure_widget.dart';

void main() {
  testWidgets(
    'distance widget ...',
    (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MeasureWidget(),
          ),
        ),
      );
      expect(find.byType(TextFormField), findsOneWidget);
    },
  );
}
