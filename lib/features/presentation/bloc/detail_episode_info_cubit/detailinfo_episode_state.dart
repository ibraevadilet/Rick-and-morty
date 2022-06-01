part of 'detailinfo_episode_cubit.dart';

@freezed
class DetailinfoEpisodeState with _$DetailinfoEpisodeState {
  const factory DetailinfoEpisodeState.initialDetailInfoEpisode() =
      _InitialDetailInfoEpisode;
  const factory DetailinfoEpisodeState.loadingDetailInfoEpisode() =
      _LoadingDetailInfoEpisode;
  const factory DetailinfoEpisodeState.loadedDetailInfoEpisode(
      EpisodeModel data) = _LoadedDetailInfoEpisode;
  const factory DetailinfoEpisodeState.errorDetailInfoEpisode(
      CatchException meassage) = _ErrorDetailInfoEpisode;
}
