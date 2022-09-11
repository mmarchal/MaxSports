import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/backend_api.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/repositories/activite_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/dio.dart';

import '../../fake_datas.dart';
import 'activite_repository_test.mocks.dart';

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

  late ActiviteRepository activiteRepository;

  setUpAll(() {
    backendApiMock = MockBackendApi();
  });

  setUp(() {
    httpResponseMock = MockHttpResponse();
    httpResponseMockList = MockHttpResponseList();
    activiteRepository = ActiviteRepository(
      api: backendApiMock,
    );
    responseMock = MockResponse();
  });

  group(
    "Activite repository ",
    () {
      test(
        "get all activites types success",
        () async {
          when(
            backendApiMock.getTypesActivites(),
          ).thenAnswer((realInvocation) => Future.value(httpResponseMockList));
          when(httpResponseMockList.response).thenReturn(responseMock);
          when(responseMock.statusCode).thenReturn(200);
          when(httpResponseMockList.data).thenReturn(
            [
              fakeTypeActivite.toJson(),
            ],
          );
          //WHEN
          final result = await activiteRepository.getTypesActivites();

          //THEN
          expect(result is SuccessResponse, true);
        },
      );

      group(
        'Post activite',
        () {
          test(
            'Success',
            () async {
              when(backendApiMock.saveActivite(
                activite: fakeActiviteSuccess,
              )).thenAnswer(
                (realInvocation) => Future.value(
                  httpResponseMock,
                ),
              );
              when(httpResponseMock.response).thenReturn(responseMock);
              when(responseMock.statusCode).thenReturn(200);
              when(httpResponseMock.data).thenReturn(
                fakeActiviteSuccess.toJson(),
              );
              //WHEN
              final result =
                  await activiteRepository.postActivite(fakeActiviteSuccess);

              //THEN
              expect(result is SuccessResponse, true);
              expect(result.data, fakeActiviteSuccess);
            },
          );
        },
      );
    },
  );
}
