import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_sports/data/backend_api.dart';
import 'package:max_sports/data/entities/api_response.dart';
import 'package:max_sports/data/repositories/activity_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/dio.dart';

import '../../fake_datas.dart';
import 'activity_repository_test.mocks.dart';

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

  late ActivityRepository activityRepository;

  setUpAll(() {
    backendApiMock = MockBackendApi();
  });

  setUp(() {
    httpResponseMock = MockHttpResponse();
    httpResponseMockList = MockHttpResponseList();
    activityRepository = ActivityRepository(
      api: backendApiMock,
    );
    responseMock = MockResponse();
  });

  group(
    "Activite repository ",
    () {
      group('get all activites types ', () {
        test(
          "Success",
          () async {
            when(
              backendApiMock.getTypesActivities(),
            ).thenAnswer(
                (realInvocation) => Future.value(httpResponseMockList));
            when(httpResponseMockList.response).thenReturn(responseMock);
            when(responseMock.statusCode).thenReturn(200);
            when(httpResponseMockList.data).thenReturn(
              [
                fakeTypeActivity.toJson(),
              ],
            );
            //WHEN
            final result = await activityRepository.getTypesActivities();

            //THEN
            expect(result is SuccessResponse, true);
          },
        );

        test(
          "Failed",
          () async {
            when(
              backendApiMock.getTypesActivities(),
            ).thenAnswer(
                (realInvocation) => Future.value(httpResponseMockList));
            when(httpResponseMockList.response).thenReturn(responseMock);
            when(responseMock.statusCode).thenReturn(500);
            //WHEN
            final result = await activityRepository.getTypesActivities();

            //THEN
            expect(result is FailResponse, true);
          },
        );
      });

      group(
        'Post activite',
        () {
          test(
            'Success',
            () async {
              when(backendApiMock.saveActivity(
                activity: fakeActivitySuccess,
              )).thenAnswer(
                (realInvocation) => Future.value(
                  httpResponseMock,
                ),
              );
              when(httpResponseMock.response).thenReturn(responseMock);
              when(responseMock.statusCode).thenReturn(200);
              when(httpResponseMock.data).thenReturn(
                fakeActivitySuccess.toJson(),
              );
              //WHEN
              final result =
                  await activityRepository.postActivity(fakeActivitySuccess);

              //THEN
              expect(result is SuccessResponse, true);
              expect(result.data, fakeActivitySuccess);
            },
          );

          test(
            'Failed',
            () async {
              when(backendApiMock.saveActivity(
                activity: null,
              )).thenAnswer(
                (realInvocation) => Future.value(
                  httpResponseMock,
                ),
              );
              when(httpResponseMock.response).thenReturn(responseMock);
              when(responseMock.statusCode).thenReturn(500);
              //WHEN
              final result =
                  await activityRepository.postActivity(fakeActivitySuccess);

              //THEN
              expect(result is FailResponse, true);
            },
          );
        },
      );

      group('get all activites ', () {
        test(
          "Success",
          () async {
            when(
              backendApiMock.getActivities(),
            ).thenAnswer(
                (realInvocation) => Future.value(httpResponseMockList));
            when(httpResponseMockList.response).thenReturn(responseMock);
            when(responseMock.statusCode).thenReturn(200);
            when(httpResponseMockList.data).thenReturn(
              [
                fakeActivitySuccess.toJson(),
              ],
            );
            //WHEN
            final result = await activityRepository.getActivities();

            //THEN
            expect(result is SuccessResponse, true);
          },
        );

        test(
          "Failed",
          () async {
            when(
              backendApiMock.getActivities(),
            ).thenAnswer(
                (realInvocation) => Future.value(httpResponseMockList));
            when(httpResponseMockList.response).thenReturn(responseMock);
            when(responseMock.statusCode).thenReturn(500);
            //WHEN
            final result = await activityRepository.getActivities();

            //THEN
            expect(result is FailResponse, true);
          },
        );
      });
    },
  );
}
