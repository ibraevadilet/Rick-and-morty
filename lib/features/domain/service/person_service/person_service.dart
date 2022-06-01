import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rick_test/features/data/models/person_model/person_model.dart';
part 'person_service.g.dart';

@RestApi()
abstract class PersonService {
  factory PersonService(Dio dio) = _PersonService;

  @GET("character/{id}")
  Future<PersonModel> getPersonFromId(@Path("id") int personId);
}
