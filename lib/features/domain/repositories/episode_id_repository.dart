import 'package:rick_test/features/data/models/episode_model/episode_model.dart';

abstract class EpisodeIdRepository {
  Future<EpisodeModel> getEpisodeFromId(int id);
}
