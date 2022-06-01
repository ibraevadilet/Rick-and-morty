// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_episodes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListEpisodesModel _$$_ListEpisodesModelFromJson(Map<String, dynamic> json) =>
    _$_ListEpisodesModel(
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => ResultEpisode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListEpisodesModelToJson(
        _$_ListEpisodesModel instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
