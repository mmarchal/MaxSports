import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_design/widgets/input/design_text_field.dart';
import 'package:max_sports/data/backend_api.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';
import 'package:max_sports/data/repositories/activity_repository.dart';
import 'package:max_sports/ui/pages/activity/widgets/measure_widget.dart';

void main() {
  testWidgets(
    'distance widget ...',
    (tester) async {
      await tester.pumpWidget(
        BlocProvider<ActivityBloc>(
          create: (contexy) => ActivityBloc(
            activityRepository: ActivityRepository(
              api: BackendApi(
                Dio(),
              ),
            ),
          ),
          child: MaterialApp(
            home: Scaffold(
              body: MeasureWidget(),
            ),
          ),
        ),
      );
      expect(find.byType(DesignTextField), findsWidgets);

      // Trigger onChanged callback
      await tester.enterText(find.byType(DesignTextField).first, '1');
      await tester.pump();

      await tester.enterText(find.byType(DesignTextField).last, '2');
      await tester.pump();

      // Verify that the onChanged callback was called
      expect(find.text('1'), findsOneWidget);
      expect(find.text('2'), findsOneWidget);
    },
  );
}
