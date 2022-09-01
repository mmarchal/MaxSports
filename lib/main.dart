import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:max_sports/main_providers.dart';
import 'package:max_sports/ui/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('fr', null);
    return MainProviders(
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
