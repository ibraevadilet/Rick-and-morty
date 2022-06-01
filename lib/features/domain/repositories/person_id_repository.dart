import 'package:rick_test/features/data/models/person_model/person_model.dart';

abstract class PersonIdRepository {
  Future<PersonModel> getPersonFromId(int id);
}
