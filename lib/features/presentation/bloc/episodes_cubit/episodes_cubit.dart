import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_test/features/data/exceptions.dart';
import 'package:rick_test/features/data/models/list_episodes_model/list_episodes_model.dart';
import 'package:rick_test/features/domain/repositories/episodes_repository.dart';

part 'episodes_state.dart';
part 'episodes_cubit.freezed.dart';

class EpisodesCubit extends Cubit<EpisodesState> {
  EpisodesRepository repository;
  EpisodesCubit(this.repository)
      : super(const EpisodesState.initialEpisodesState());

  getEpisodes(int page) async {
    emit(const EpisodesState.loadingEpisodesState());
    try {
      emit(EpisodesState.loadedEpisodesState(
          await repository.episodesList(page)));
    } catch (e) {
      emit(
          EpisodesState.errorEpisodesState(CatchException.convertException(e)));
    }
  }
}
