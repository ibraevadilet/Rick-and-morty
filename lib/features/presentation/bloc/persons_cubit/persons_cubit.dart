import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_test/features/data/exceptions.dart';
import 'package:rick_test/features/data/models/list_persons_model/list_persons_model.dart';
import 'package:rick_test/features/domain/repositories/persons_repository.dart';

part 'persons_state.dart';
part 'persons_cubit.freezed.dart';

class PersonsCubit extends Cubit<PersonsState> {
  PersonsRepository repository;
  PersonsCubit(this.repository)
      : super(const PersonsState.initialPersonsState());

  getPersons(
      {required int page,
      required String name,
      required String status,
      required String gender}) async {
    emit(const PersonsState.loadingPersonsState());
    try {
      emit(PersonsState.loadedPersonsState(
          await repository.personsList(page, name, status, gender)));
    } catch (e) {
      emit(PersonsState.errorPersonsState(CatchException.convertException(e)));
    }
  }
}
