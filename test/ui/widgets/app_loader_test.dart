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

  group('LoaderOverlay method', () {
    testWidgets(
      'show',
      (WidgetTester tester) async {
        // showLoaderOverlay(context);
        await tester.pumpWidget(
          MaterialApp(
            home: Builder(
              builder: (context) => ElevatedButton(
                onPressed: () => showLoaderOverlay(context),
                child: const Text('show'),
              ),
            ),
          ),
        );

        await tester.tap(find.text('show'));
        await tester.pump();

        expect(find.byType(AppLoader), findsOneWidget);
      },
    );

    testWidgets('hide', (WidgetTester tester) async {
      // hideLoaderOverlay();
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) => ElevatedButton(
              key: const Key('hide'),
              onPressed: () => hideLoaderOverlay(),
              child: const Text('hide'),
            ),
          ),
        ),
      );

      await tester.tap(find.byKey(const Key('hide')), warnIfMissed: false);
      await tester.pump();

      expect(find.byType(AppLoader), findsNothing);
    });
  });
}
