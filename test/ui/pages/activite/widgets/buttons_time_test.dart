import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/backend_api.dart';
import 'package:max_sports/data/blocs/activite_bloc.dart';
import 'package:max_sports/data/repositories/activite_repository.dart';
import 'package:max_sports/ui/pages/activite/widgets/buttons_time.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets(
    'buttons time ...',
    (tester) async {
      await tester.pumpWidget(
        Provider<ActiviteBloc>(
          create: (context) => ActiviteBloc(
            activiteRepository: ActiviteRepository(
              api: BackendApi(
                Dio(),
                baseUrl: 'http://ns329111.ip-37-187-107.eu:3500/',
              ),
            ),
          ),
          child: MaterialApp(
            home: ButtonsTime(
              onButtonSelected: (int index) {},
            ),
          ),
        ),
      );
      expect(find.byType(ElevatedButton), findsWidgets);
    },
  );
}
