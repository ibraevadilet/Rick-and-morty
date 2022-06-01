part of 'detailinfo_cubit.dart';

@freezed
class DetailinfoState with _$DetailinfoState {
  const factory DetailinfoState.initialDetailInfoPerson() =
      _InitialDetailInfoPerson;
  const factory DetailinfoState.loadingDetailInfoPerson() =
      _LoadingDetailInfoPerson;
  const factory DetailinfoState.loadedDetailInfoPerson(PersonModel data) =
      _LoadedDetailInfoPerson;
  const factory DetailinfoState.errorDetailInfoPerson(CatchException meassage) =
      _ErrorDetailInfoPerson;
}
