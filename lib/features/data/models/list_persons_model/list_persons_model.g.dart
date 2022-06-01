// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_persons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListPersonsModel _$$_ListPersonsModelFromJson(Map<String, dynamic> json) =>
    _$_ListPersonsModel(
      errorMessage: json['errorMessage'] == null
          ? null
          : ErrorMessage.fromJson(json['errorMessage'] as Map<String, dynamic>),
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => ResultPerson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListPersonsModelToJson(_$_ListPersonsModel instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'info': instance.info,
      'results': instance.results,
    };
