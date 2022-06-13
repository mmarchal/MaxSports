import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:max_sports/objects/poids.dart';

class BackEnd {
  final String _path = 'http://localhost:2000/';

  Future<List<Poids>> getPoids() async {
    final response = await http.get(Uri.parse(_path + 'all'));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return (json as List).map((e) => Poids.fromJson(e)).toList();
    } else {
      return [];
    }
  }

  Future<Poids?> newPoids(Poids poids) async {
    final response = await http.post(
      Uri.parse(_path + 'save'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(
        poids.toJson(),
      ),
    );
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return Poids.fromJson(json);
    } else {
      return null;
    }
  }
}
