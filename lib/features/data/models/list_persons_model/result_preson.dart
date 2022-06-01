import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_person.freezed.dart';
part 'result_person.g.dart';

@freezed
class ResultPerson with _$ResultPerson {
  factory ResultPerson({
    int? id,
    String? name,
    String? status,
    String? species,
    String? gender,
    String? image,
    DateTime? created,
  }) = _ResultPerson;

  factory ResultPerson.fromJson(Map<String, dynamic> json) =>
      _$ResultPersonFromJson(json);
}
