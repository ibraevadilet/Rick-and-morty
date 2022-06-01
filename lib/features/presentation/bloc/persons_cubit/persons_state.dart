part of 'persons_cubit.dart';

@freezed
class PersonsState with _$PersonsState {
  const factory PersonsState.initialPersonsState() = _InitialPersonsState;
  const factory PersonsState.loadedPersonsState(ListPersonsModel model) =
      _LoadedPersonsState;
  const factory PersonsState.loadingPersonsState() = _LoadingPersonsState;
  const factory PersonsState.errorPersonsState(CatchException message) =
      _ErrorPersonsState;
}
