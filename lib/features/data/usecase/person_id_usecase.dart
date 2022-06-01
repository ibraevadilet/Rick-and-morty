import 'package:rick_test/core/constants/get_it.dart';
import 'package:rick_test/features/data/exceptions.dart';
import 'package:rick_test/features/data/models/person_model/person_model.dart';
import 'package:rick_test/features/domain/repositories/person_id_repository.dart';
import 'package:rick_test/features/domain/service/person_service/person_service.dart';

class PersonFromIdUseCase extends PersonIdRepository {
  @override
  Future<PersonModel> getPersonFromId(id) async {
    try {
      var response =
          await PersonService(GetItService.service).getPersonFromId(id);

      print("response.respone.responce - $response");
      return response;
    } catch (error) {
      throw CatchException.convertException(error);
    }
  }
}
