import 'package:rick_test/core/constants/get_it.dart';
import 'package:rick_test/features/data/exceptions.dart';
import 'package:rick_test/features/data/models/episode_model/episode_model.dart';
import 'package:rick_test/features/domain/repositories/episode_id_repository.dart';
import 'package:rick_test/features/domain/service/episode_service/episode_service.dart';

class EpisodeFromIdUseCase extends EpisodeIdRepository {
  @override
  Future<EpisodeModel> getEpisodeFromId(id) async {
    try {
      var response =
          await EpisodeService(GetItService.service).getEpisodeFromId(id);

      print("response.respone.responce - $response");
      return response;
    } catch (error) {
      throw CatchException.convertException(error);
    }
  }
}
