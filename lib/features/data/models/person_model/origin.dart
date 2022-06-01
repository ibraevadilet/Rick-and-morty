import 'package:freezed_annotation/freezed_annotation.dart';

part 'origin.freezed.dart';
part 'origin.g.dart';

@freezed
class Origin with _$Origin {
  factory Origin({
    String? name,
    String? url,
  }) = _Origin;

  factory Origin.fromJson(Map<String, dynamic> json) => _$OriginFromJson(json);
}
