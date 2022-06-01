part of 'episodes_cubit.dart';

@freezed
class EpisodesState with _$EpisodesState {
  const factory EpisodesState.initialEpisodesState() = _InitialEpisodesState;
  const factory EpisodesState.loadedEpisodesState(ListEpisodesModel model) =
      _LoadedEpisodesState;
  const factory EpisodesState.loadingEpisodesState() = _LoadingEpisodesState;
  const factory EpisodesState.errorEpisodesState(CatchException message) =
      _ErrorEpisodesState;
}
