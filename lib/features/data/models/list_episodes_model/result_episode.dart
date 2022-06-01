import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_episode.freezed.dart';
part 'result_episode.g.dart';

@freezed
class ResultEpisode with _$ResultEpisode {
  factory ResultEpisode({
    int? id,
    String? name,
    @JsonKey(name: 'air_date') String? airDate,
    String? episode,
    DateTime? created,
  }) = _ResultEpisode;

  factory ResultEpisode.fromJson(Map<String, dynamic> json) =>
      _$ResultEpisodeFromJson(json);
}
