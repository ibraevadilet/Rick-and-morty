import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_test/features/data/exceptions.dart';
import 'package:rick_test/features/data/models/episode_model/episode_model.dart';
import 'package:rick_test/features/domain/repositories/episode_id_repository.dart';

part 'detailinfo_episode_state.dart';
part 'detailinfo_episode_cubit.freezed.dart';

class DetailinfoEpisodeCubit extends Cubit<DetailinfoEpisodeState> {
  EpisodeIdRepository repository;
  DetailinfoEpisodeCubit(this.repository)
      : super(const DetailinfoEpisodeState.initialDetailInfoEpisode());

  getDetailInfoEpisode(int id) async {
    emit(const DetailinfoEpisodeState.initialDetailInfoEpisode());
    try {
      emit(DetailinfoEpisodeState.loadedDetailInfoEpisode(
          await repository.getEpisodeFromId(id)));
    } catch (e) {
      emit(DetailinfoEpisodeState.errorDetailInfoEpisode(
          CatchException.convertException(e)));
    }
  }
}
