import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_test/features/data/models/error_message/error_message.dart';
import 'package:rick_test/features/data/models/info/info.dart';

import 'result_preson.dart';

part 'list_persons_model.freezed.dart';
part 'list_persons_model.g.dart';

@freezed
class ListPersonsModel with _$ListPersonsModel {
  factory ListPersonsModel({
    ErrorMessage? errorMessage,
    Info? info,
    List<ResultPerson>? results,
  }) = _ListPersonsModel;

  factory ListPersonsModel.fromJson(Map<String, dynamic> json) =>
      _$ListPersonsModelFromJson(json);
}
