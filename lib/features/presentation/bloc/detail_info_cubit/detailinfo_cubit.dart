import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_test/features/data/exceptions.dart';
import 'package:rick_test/features/data/models/person_model/person_model.dart';
import 'package:rick_test/features/domain/repositories/person_id_repository.dart';

part 'detailinfo_state.dart';
part 'detailinfo_cubit.freezed.dart';

class DetailinfoCubit extends Cubit<DetailinfoState> {
  PersonIdRepository repository;
  DetailinfoCubit(this.repository)
      : super(const DetailinfoState.initialDetailInfoPerson());

  getDetailInfoPerson(int id) async {
    emit(const DetailinfoState.initialDetailInfoPerson());
    try {
      emit(DetailinfoState.loadedDetailInfoPerson(
          await repository.getPersonFromId(id)));
    } catch (e) {
      emit(DetailinfoState.errorDetailInfoPerson(
          CatchException.convertException(e)));
    }
  }
}
