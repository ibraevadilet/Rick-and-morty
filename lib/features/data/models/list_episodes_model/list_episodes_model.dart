import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_test/features/data/models/info/info.dart';

import 'result_episode.dart';

part 'list_episodes_model.freezed.dart';
part 'list_episodes_model.g.dart';

@freezed
class ListEpisodesModel with _$ListEpisodesModel {
  factory ListEpisodesModel({
    Info? info,
    List<ResultEpisode>? results,
  }) = _ListEpisodesModel;

  factory ListEpisodesModel.fromJson(Map<String, dynamic> json) =>
      _$ListEpisodesModelFromJson(json);
}
