import 'package:rick_test/features/data/models/list_episodes_model/list_episodes_model.dart';

abstract class EpisodesRepository {
  Future<ListEpisodesModel> episodesList(int page);
}
