import 'package:rick/feature/characters/data/models/person_model.dart';
import 'package:rick/feature/characters/domain/repositories/get_person_repo.dart';

class GetPersonUseCase {
  GetPersonUseCase({
    required this.repo,
  });
  final GetPersonRepo repo;

  List<PersonResult> personResultList = [];

  Future<PersonModel> getPersonRepo({
    required String name,
    required String gender,
    required String status,
    required int page,
  }) async {
    try {
      final result = await repo.getPersonRepo(
        name: name,
        gender: gender,
        status: status,
        page: page,
      );

      personResultList.addAll(result.results);

      return result.copyWith(results: personResultList);
    } catch (e) {
      rethrow;
    }
  }
}
