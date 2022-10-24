import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/core/source/config_service.dart';
import 'package:max_sports/ui/widgets/type_activity_card.dart';
import 'package:provider/provider.dart';

import '../../fake_datas.dart';

class FakeConfigService extends ConfigService {
  @override
  String? get imageUrl => url;
}

void main() {
  HttpOverrides.global = null;

  testWidgets(
    'type activite card ...',
    (tester) async {
      HttpOverrides.global = null;
      await tester.pumpWidget(
        Provider<ConfigService>(
          create: (context) => FakeConfigService(),
          child: MaterialApp(
            home: Scaffold(
              body: TypeActivityCard(
                type: fakeTypeActivity,
                onTap: () {},
              ),
            ),
          ),
        ),
      );

      expect(find.text(fakeTypeActivity.type), findsOneWidget);
    },
  );
}
