import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_model.freezed.dart';
part 'episode_model.g.dart';

@freezed
class EpisodeModel with _$EpisodeModel {
  factory EpisodeModel({
    int? id,
    String? name,
    @JsonKey(name: 'air_date') String? airDate,
    String? episode,
    List<String>? characters,
    String? url,
    DateTime? created,
  }) = _EpisodeModel;

  factory EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelFromJson(json);
}
