import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/ui/widgets/app_loader.dart';

void main() {
  testWidgets(
    'app loader widget',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: AppLoader(),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    },
  );

  testWidgets(
    'overlayEntry',
    (tester) async {
      await tester.pumpWidget(
        Builder(builder: (context) {
          return Directionality(
            textDirection: TextDirection.ltr,
            child: Overlay(
              initialEntries: <OverlayEntry>[
                createOverlayEntryLoader(context),
              ],
            ),
          );
        }),
      );

      expect(find.byType(Overlay), findsOneWidget);
    },
  );
}
