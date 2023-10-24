import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick/feature/characters/data/models/person_model.dart';
import 'package:rick/feature/characters/domain/use_cases/get_person_use_case.dart';

part 'get_person_state.dart';
part 'get_person_cubit.freezed.dart';

class GetPersonCubit extends Cubit<GetPersonState> {
  GetPersonCubit({required this.useCase})
      : super(const GetPersonState.loading()) {
    getPersons();
  }

  final GetPersonUseCase useCase;

  late ScrollController scrollController =
      ScrollController(initialScrollOffset: 0)..addListener(_scrollListener);

  String name = '';
  String gender = '';
  String status = '';
  int currantPage = 1;
  int allPages = 0;

  Future<void> getPersons() async {
    try {
      final result = await useCase.getPersonRepo(
        name: name,
        gender: gender,
        status: status,
        page: currantPage,
      );

      allPages = result.info.pages;

      emit(GetPersonState.success(result));
    } catch (e) {
      emit(GetPersonState.error(e.toString()));
    }
  }

  void searchPerson(String searhText) {
    name = searhText;
    useCase.personResultList.clear();
    currantPage = 1;
    if (scrollController.hasClients) {
      scrollController.jumpTo(0);
    }
    emit(const GetPersonState.loading());
    getPersons();
  }

  void filterSearch({
    String? genderFrom,
    String? statusFrom,
  }) {
    if (genderFrom != null) {
      gender = genderFrom;
    }
    if (statusFrom != null) {
      status = statusFrom;
    }
    useCase.personResultList.clear();
    currantPage = 1;
    if (scrollController.hasClients) {
      scrollController.jumpTo(0);
    }

    emit(const GetPersonState.loading());
    getPersons();
  }

  _scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      if (allPages != currantPage) {
        currantPage = currantPage += 1;
        getPersons();
      }
    }
  }

  @override
  Future<void> close() {
    scrollController.dispose();
    return super.close();
  }
}
