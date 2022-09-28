import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:max_sports/core/source/config_service.dart';
import 'package:max_sports/main_providers.dart';
import 'package:max_sports/single_bloc_observer.dart';
import 'package:max_sports/ui/pages/home.dart';

Future<void> main() async {
  Bloc.observer = SingleBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();

  final configService = ConfigService();
  await configService.init();
  runApp(
    MyApp(
      service: configService,
    ),
  );
}

class MyApp extends StatelessWidget {
  final ConfigService service;

  const MyApp({
    Key? key,
    required this.service,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('fr', null);
    return MainProviders(
      service: service,
      child: MaterialApp(
        title: 'Max Sports',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
