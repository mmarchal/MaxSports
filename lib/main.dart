import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_sports/app.dart';
import 'package:max_sports/core/config/config.dart';
import 'package:max_sports/providers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final configuration = await loadLocalConfig();
  runApp(
    ProviderScope(
      overrides: [
        configProvider.overrideWithValue(configuration),
      ],
      child: const MyApp(),
    ),
  );
}

Future<Config> loadLocalConfig() async {
  try {
    final String json =
        await rootBundle.loadString("assets/config/config_dev.json");
    return Config.fromJson(jsonDecode(json) as Map<String, dynamic>);
  } catch (e) {
    return const Config();
  }
}
