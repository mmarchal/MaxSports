import 'package:dio/dio.dart';
import 'package:max_sports/data/entities/activity.dart';
import 'package:max_sports/data/entities/weight.dart';
import 'package:retrofit/retrofit.dart';

part 'backend_api.g.dart';

@RestApi()
abstract class BackendApi {
  factory BackendApi(
    Dio dio, {
    String baseUrl,
//    String imageUrl,
  }) = _BackendApi;

  @GET('poids/all')
  Future<HttpResponse> getWeight();

  @POST('poids/save')
  Future<HttpResponse> saveWeight({
    @Body() required Weight weight,
  });

  @GET('typeActivite/all')
  Future<HttpResponse> getTypesActivities();

  @GET('poids/last')
  Future<HttpResponse> getLastWeight();

  @GET('poids/lastTwo')
  Future<HttpResponse> getLastTwoWeight();

  @POST('activite/save')
  Future<HttpResponse> saveActivity({
    @Body() required Activity activity,
  });
}
