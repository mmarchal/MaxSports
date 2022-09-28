import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:max_sports/core/config/config.dart';

class ConfigService {
  String? backendUrl;
  String? imageUrl;

  Future<void> init() async {
    final localConfig = await loadLocalConfig();
    backendUrl = localConfig.backendUrl;
    imageUrl = localConfig.imageUrl;
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
}
