import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rick_test/features/data/models/episode_model/episode_model.dart';
part 'episode_service.g.dart';

@RestApi()
abstract class EpisodeService {
  factory EpisodeService(Dio dio) = _EpisodeService;

  @GET("episode/{id}")
  Future<EpisodeModel> getEpisodeFromId(@Path("id") int episodeId);
}
