import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/ui/pages/activity/widgets/distance_widget.dart';

void main() {
  testWidgets(
    'distance widget ...',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: DistanceWidget(),
          ),
        ),
      );
      expect(find.byType(TextFormField), findsOneWidget);
    },
  );
}
