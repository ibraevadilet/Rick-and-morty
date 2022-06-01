import 'package:rick_test/features/data/models/list_persons_model/list_persons_model.dart';

abstract class PersonsRepository {
  Future<ListPersonsModel> personsList(
      int page, String name, String status, String gender);
}
