import 'package:freezed_annotation/freezed_annotation.dart';

import 'location.dart';
import 'origin.dart';

part 'person_model.freezed.dart';
part 'person_model.g.dart';

@freezed
class PersonModel with _$PersonModel {
  factory PersonModel({
    int? id,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
    Origin? origin,
    Location? location,
    String? image,
    List<String>? episode,
    String? url,
    DateTime? created,
  }) = _PersonModel;

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);
}
