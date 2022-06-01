import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rick_test/features/data/models/list_persons_model/list_persons_model.dart';
part 'persons_service.g.dart';

@RestApi()
abstract class PersonsService {
  factory PersonsService(Dio dio) = _PersonsService;

  @GET(
      "character?page={pageNumber}&name={namePerson}&status={statusPerson}&gender={genderPerson}")
  Future<ListPersonsModel> personsService(
      @Path("pageNumber") int page,
      @Path("namePerson") String name,
      @Path("statusPerson") String status,
      @Path("genderPerson") String gender);
}
