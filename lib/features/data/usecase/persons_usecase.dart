import 'package:rick_test/core/constants/get_it.dart';
import 'package:rick_test/features/data/exceptions.dart';
import 'package:rick_test/features/data/models/list_persons_model/list_persons_model.dart';
import 'package:rick_test/features/data/models/list_persons_model/result_preson.dart';
import 'package:rick_test/features/domain/repositories/persons_repository.dart';
import 'package:rick_test/features/domain/service/list_persons_service/persons_service.dart';

class PersonsUseCase extends PersonsRepository {
  @override
  Future<ListPersonsModel> personsList(page, name, status, gender) async {
    try {
      var response = await PersonsService(GetItService.service)
          .personsService(page, name, status, gender);

      print("response.respone.responce - $page");
      if (response.errorMessage?.error != null) {
        print(response.errorMessage?.error);
        throw CatchException.convertException(
            response.errorMessage?.error ?? "");
      }
      return response;
    } catch (error) {
      throw CatchException.convertException(error);
    }
  }
}
