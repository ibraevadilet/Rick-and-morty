// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultEpisode _$$_ResultEpisodeFromJson(Map<String, dynamic> json) =>
    _$_ResultEpisode(
      id: json['id'] as int?,
      name: json['name'] as String?,
      airDate: json['air_date'] as String?,
      episode: json['episode'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$_ResultEpisodeToJson(_$_ResultEpisode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'air_date': instance.airDate,
      'episode': instance.episode,
      'created': instance.created?.toIso8601String(),
    };
