import 'package:dio/dio.dart';
import 'package:max_sports/data/entities/activite.dart';
import 'package:max_sports/data/entities/poids.dart';
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
  Future<HttpResponse> getPoids();

  @POST('poids/save')
  Future<HttpResponse> savePoids({
    @Body() required Poids poids,
  });

  @GET('typeActivite/all')
  Future<HttpResponse> getTypesActivites();

  @GET('poids/last')
  Future<HttpResponse> getLastPoids();

  @GET('poids/lastTwo')
  Future<HttpResponse> getLastTwoPoids();

  @POST('activite/save')
  Future<HttpResponse> saveActivite({
    @Body() required Activite activite,
  });
}
