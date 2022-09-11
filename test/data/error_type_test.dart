import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/error_type.dart';

void main() {
  test(
    'Error type',
    () {
      final okType = getAPIType(200);
      final invalidType = getAPIType(400);
      final unauthorizedType = getAPIType(401);
      final forbiddenType = getAPIType(403);
      final notFoundType = getAPIType(404);
      final conflictType = getAPIType(409);
      final unsupportedType = getAPIType(415);
      final invalidDataType = getAPIType(422);
      final serverType = getAPIType(500);
      final timeoutType = getAPIType(502);

      expect(okType, APIType.ok);
      expect(invalidType, APIType.invalid);
      expect(unauthorizedType, APIType.unauthorized);
      expect(forbiddenType, APIType.forbidden);
      expect(notFoundType, APIType.notFound);
      expect(conflictType, APIType.conflict);
      expect(unsupportedType, APIType.unsupportedMediaType);
      expect(invalidDataType, APIType.invalidData);
      expect(serverType, APIType.server);
      expect(timeoutType, APIType.timeout);
    },
  );
}
