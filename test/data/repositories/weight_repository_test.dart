import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/backend_api.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/repositories/weight_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/dio.dart';

import '../../fake_datas.dart';
import 'weight_repository_test.mocks.dart';

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

  late WeightRepository poidsRepository;

  setUpAll(() {
    backendApiMock = MockBackendApi();
  });

  setUp(() {
    httpResponseMock = MockHttpResponse();
    httpResponseMockList = MockHttpResponseList();
    poidsRepository = WeightRepository(
      api: backendApiMock,
    );
    responseMock = MockResponse();
  });

  group(
    'Weight repository',
    () {
      test(
        'getWeight success',
        () async {
          when(
            backendApiMock.getWeight(),
          ).thenAnswer((realInvocation) => Future.value(httpResponseMockList));
          when(httpResponseMockList.response).thenReturn(responseMock);
          when(responseMock.statusCode).thenReturn(200);
          when(httpResponseMockList.data).thenReturn(
            [
              fakeWeightLast.toJson(),
            ],
          );
          //WHEN
          final result = await poidsRepository.getWeight();

          //THEN
          expect(result is SuccessResponse, true);
        },
      );

      test(
        'getWeight failed',
        () async {
          when(
            backendApiMock.getWeight(),
          ).thenAnswer((realInvocation) => Future.value(httpResponseMock));
          when(httpResponseMock.response).thenReturn(responseMock);
          when(responseMock.statusCode).thenReturn(400);
          //WHEN
          final result = await poidsRepository.getWeight();

          //THEN
          expect(result is FailResponse, true);
        },
      );

      group('postPoids', () {
        test(
          'Success',
          () async {
            when(backendApiMock.saveWeight(weight: fakeWeightLast)).thenAnswer(
              (realInvocation) => Future.value(
                httpResponseMock,
              ),
            );
            when(httpResponseMock.response).thenReturn(responseMock);
            when(responseMock.statusCode).thenReturn(200);
            when(httpResponseMock.data).thenReturn(
              fakeWeightLast.toJson(),
            );
            //WHEN
            final result = await poidsRepository.postWeight(fakeWeightLast);

            //THEN
            expect(result is SuccessResponse, true);
            expect(result.data, fakeWeightLast);
          },
        );

        test(
          'Failed',
          () async {
            when(backendApiMock.saveWeight(weight: null)).thenAnswer(
              (realInvocation) => Future.value(
                httpResponseMock,
              ),
            );
            when(httpResponseMock.response).thenReturn(responseMock);
            when(responseMock.statusCode).thenReturn(500);
            //WHEN
            final result = await poidsRepository.postWeight(fakeWeightLast);

            //THEN
            expect(result is FailResponse, true);
          },
        );
      });

      group('getLastWeight', () {
        test(
          'Success',
          () async {
            when(
              backendApiMock.getLastWeight(),
            ).thenAnswer((realInvocation) => Future.value(httpResponseMock));
            when(httpResponseMock.response).thenReturn(responseMock);
            when(responseMock.statusCode).thenReturn(200);
            when(httpResponseMock.data).thenReturn(
              fakeWeightLast.toJson(),
            );
            //WHEN
            final result = await poidsRepository.getLastWeight();

            //THEN
            expect(result is SuccessResponse, true);
          },
        );

        test(
          'Failed',
          () async {
            when(
              backendApiMock.getLastWeight(),
            ).thenAnswer((realInvocation) => Future.value(httpResponseMock));
            when(httpResponseMock.response).thenReturn(responseMock);
            when(responseMock.statusCode).thenReturn(500);
            //WHEN
            final result = await poidsRepository.getLastWeight();

            //THEN
            expect(result is FailResponse, true);
          },
        );
      });

      group('getLastTwoWeight', () {
        test(
          'Success',
          () async {
            when(
              backendApiMock.getLastTwoWeight(),
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

        test(
          'Failed',
          () async {
            when(
              backendApiMock.getLastTwoWeight(),
            ).thenAnswer((realInvocation) => Future.value(httpResponseMock));
            when(httpResponseMock.response).thenReturn(responseMock);
            when(responseMock.statusCode).thenReturn(500);
            //WHEN
            final result = await poidsRepository.getLastTwoWeight();

            //THEN
            expect(result is FailResponse, true);
          },
        );
      });
    },
  );
}
