import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/backend_api.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/repositories/poids_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/dio.dart';

import '../../fake_datas.dart';
import 'poids_repository_test.mocks.dart';

@GenerateMocks(
  [
    BackendApi,
    Response,
  ],
  customMocks: [
    MockSpec<HttpResponse<Map<String, dynamic>>>(
      as: #MockHttpResponse,
    ),
    MockSpec<HttpResponse<List<Map<String, dynamic>>>>(
      as: #MockHttpResponseList,
    ),
  ],
)
void main() {
  late MockBackendApi backendApiMock;
  late MockResponse responseMock;
  late MockHttpResponse httpResponseMock;
  late MockHttpResponseList httpResponseMockList;

  late PoidsRepository poidsRepository;

  setUpAll(() {
    backendApiMock = MockBackendApi();
  });

  setUp(() {
    httpResponseMock = MockHttpResponse();
    httpResponseMockList = MockHttpResponseList();
    poidsRepository = PoidsRepository(
      api: backendApiMock,
    );
    responseMock = MockResponse();
  });

  group(
    'Poids repository',
    () {
      test(
        'getPoids',
        () async {
          when(
            backendApiMock.getPoids(),
          ).thenAnswer((realInvocation) => Future.value(httpResponseMockList));
          when(httpResponseMockList.response).thenReturn(responseMock);
          when(responseMock.statusCode).thenReturn(200);
          when(httpResponseMockList.data).thenReturn(
            [
              fakePoidsLast.toJson(),
            ],
          );
          //WHEN
          final result = await poidsRepository.getPoids();

          //THEN
          expect(result is SuccessResponse, true);
        },
      );

      test(
        'postPoids success',
        () async {
          when(backendApiMock.savePoids(poids: fakePoidsLast)).thenAnswer(
            (realInvocation) => Future.value(
              httpResponseMock,
            ),
          );
          when(httpResponseMock.response).thenReturn(responseMock);
          when(responseMock.statusCode).thenReturn(200);
          when(httpResponseMock.data).thenReturn(
            fakePoidsLast.toJson(),
          );
          //WHEN
          final result = await poidsRepository.postPoids(fakePoidsLast);

          //THEN
          expect(result is SuccessResponse, true);
          expect(result.data, fakePoidsLast);
        },
      );

      test(
        'getLastWeight',
        () async {
          when(
            backendApiMock.getLastPoids(),
          ).thenAnswer((realInvocation) => Future.value(httpResponseMock));
          when(httpResponseMock.response).thenReturn(responseMock);
          when(responseMock.statusCode).thenReturn(200);
          when(httpResponseMock.data).thenReturn(
            fakePoidsLast.toJson(),
          );
          //WHEN
          final result = await poidsRepository.getLastWeight();

          //THEN
          expect(result is SuccessResponse, true);
        },
      );

      test(
        'getLastTwoWeight',
        () async {
          when(
            backendApiMock.getLastTwoPoids(),
          ).thenAnswer((realInvocation) => Future.value(httpResponseMock));
          when(httpResponseMock.response).thenReturn(responseMock);
          when(responseMock.statusCode).thenReturn(200);
          when(httpResponseMock.data).thenReturn(
            fakeRecap.toJson(),
          );
          //WHEN
          final result = await poidsRepository.getLastTwoWeight();

          //THEN
          expect(result is SuccessResponse, true);
        },
      );
    },
  );
}
