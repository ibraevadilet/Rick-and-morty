import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rick_test/features/data/models/list_episodes_model/list_episodes_model.dart';
import 'package:rick_test/routes/routes.dart';
part 'episodes_service.g.dart';

@RestApi()
abstract class EpisodesService {
  factory EpisodesService(Dio dio) = _EpisodesService;

  @GET("episode/")
  Future<ListEpisodesModel> episodesService(@QueryParam() page);
}
