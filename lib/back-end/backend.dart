import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:max_sports/back-end/api_error.dart';
import 'package:max_sports/back-end/api_response.dart';
import 'package:max_sports/objects/poids.dart';

class BackEnd {
  final String _path = 'http://10.0.0.2:2000/';

  Future<APIResponse<List<Poids>>> getPoids() async {
    final response = await http.get(Uri.parse(_path + 'all'));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return APIResponse(
        data: json.map<Poids>((item) => Poids.fromJson(item)).toList(),
        type: APIType.ok,
      );
    } else {
      return APIResponse(
        type: getAPIType(response.statusCode),
        error: APIError(
          systemMessage: response.body,
          title: 'Erreur',
          content: 'Une erreur est survenue',
        ),
      );
    }
  }

  Future<APIResponse<Poids?>> newPoids(Poids poids) async {
    final response = await http.post(
      Uri.parse(_path + 'save'),
      headers: {
        'Content-Type': 'application/json',
        "Access-Control-Allow-Origin": "*",
      },
      body: jsonEncode(
        poids.toJson(),
      ),
    );
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return APIResponse(
        data: Poids.fromJson(json),
        type: APIType.ok,
      );
    } else {
      return APIResponse(
        error: APIError(
          systemMessage: response.body,
          title: 'Erreur',
          content: 'Une erreur est survenue',
        ),
        type: getAPIType(
          response.statusCode,
        ),
      );
    }
  }

  getAPIType(int statusCode) {
    switch (statusCode) {
      case 200:
        return APIType.ok;
      case 400:
        return APIType.invalid;
      case 401:
        return APIType.unauthorized;
      case 403:
        return APIType.forbidden;
      case 404:
        return APIType.notFound;
      case 409:
        return APIType.conflict;
      case 422:
        return APIType.invalidData;
      case 500:
        return APIType.server;
      case 502:
        return APIType.timeout;
    }
  }
}
