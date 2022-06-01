// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_preson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultPerson _$$_ResultPersonFromJson(Map<String, dynamic> json) =>
    _$_ResultPerson(
      id: json['id'] as int?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      species: json['species'] as String?,
      gender: json['gender'] as String?,
      image: json['image'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$_ResultPersonToJson(_$_ResultPerson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'gender': instance.gender,
      'image': instance.image,
      'created': instance.created?.toIso8601String(),
    };
