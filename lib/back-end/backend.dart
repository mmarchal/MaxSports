import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:max_sports/objects/poids.dart';

class BackEnd {
  final String _path = 'http://localhost:2000/';

  Future<Poids> get(String path) async {
    final response = await http.get(Uri.parse(_path + path));
    if (response.statusCode == 200) {
      return Poids.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<String> newPoids(String path, Poids poids) async {
    final response =
        await http.post(Uri.parse(_path + path), body: poids.toJson());
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
