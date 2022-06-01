import 'package:rick_test/core/constants/get_it.dart';
import 'package:rick_test/features/data/exceptions.dart';
import 'package:rick_test/features/data/models/list_episodes_model/list_episodes_model.dart';
import 'package:rick_test/features/domain/repositories/episodes_repository.dart';
import 'package:rick_test/features/domain/service/list_episodes_service/episodes_service.dart';

class EpisodesUseCase extends EpisodesRepository {
  @override
  Future<ListEpisodesModel> episodesList(page) async {
    try {
      var response =
          await EpisodesService(GetItService.service).episodesService(page);

      print("response.respone.responce - $response");
      return response;
    } catch (error) {
      throw CatchException.convertException(error);
    }
  }
}
