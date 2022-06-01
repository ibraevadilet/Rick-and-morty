// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_persons_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListPersonsModel _$ListPersonsModelFromJson(Map<String, dynamic> json) {
  return _ListPersonsModel.fromJson(json);
}

/// @nodoc
class _$ListPersonsModelTearOff {
  const _$ListPersonsModelTearOff();

  _ListPersonsModel call(
      {ErrorMessage? errorMessage, Info? info, List<ResultPerson>? results}) {
    return _ListPersonsModel(
      errorMessage: errorMessage,
      info: info,
      results: results,
    );
  }

  ListPersonsModel fromJson(Map<String, Object> json) {
    return ListPersonsModel.fromJson(json);
  }
}

/// @nodoc
const $ListPersonsModel = _$ListPersonsModelTearOff();

/// @nodoc
mixin _$ListPersonsModel {
  ErrorMessage? get errorMessage => throw _privateConstructorUsedError;
  Info? get info => throw _privateConstructorUsedError;
  List<ResultPerson>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListPersonsModelCopyWith<ListPersonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPersonsModelCopyWith<$Res> {
  factory $ListPersonsModelCopyWith(
          ListPersonsModel value, $Res Function(ListPersonsModel) then) =
      _$ListPersonsModelCopyWithImpl<$Res>;
  $Res call(
      {ErrorMessage? errorMessage, Info? info, List<ResultPerson>? results});

  $ErrorMessageCopyWith<$Res>? get errorMessage;
  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$ListPersonsModelCopyWithImpl<$Res>
    implements $ListPersonsModelCopyWith<$Res> {
  _$ListPersonsModelCopyWithImpl(this._value, this._then);

  final ListPersonsModel _value;
  // ignore: unused_field
  final $Res Function(ListPersonsModel) _then;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorMessage?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultPerson>?,
    ));
  }

  @override
  $ErrorMessageCopyWith<$Res>? get errorMessage {
    if (_value.errorMessage == null) {
      return null;
    }

    return $ErrorMessageCopyWith<$Res>(_value.errorMessage!, (value) {
      return _then(_value.copyWith(errorMessage: value));
    });
  }

  @override
  $InfoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $InfoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$ListPersonsModelCopyWith<$Res>
    implements $ListPersonsModelCopyWith<$Res> {
  factory _$ListPersonsModelCopyWith(
          _ListPersonsModel value, $Res Function(_ListPersonsModel) then) =
      __$ListPersonsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {ErrorMessage? errorMessage, Info? info, List<ResultPerson>? results});

  @override
  $ErrorMessageCopyWith<$Res>? get errorMessage;
  @override
  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$ListPersonsModelCopyWithImpl<$Res>
    extends _$ListPersonsModelCopyWithImpl<$Res>
    implements _$ListPersonsModelCopyWith<$Res> {
  __$ListPersonsModelCopyWithImpl(
      _ListPersonsModel _value, $Res Function(_ListPersonsModel) _then)
      : super(_value, (v) => _then(v as _ListPersonsModel));

  @override
  _ListPersonsModel get _value => super._value as _ListPersonsModel;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_ListPersonsModel(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorMessage?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultPerson>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListPersonsModel implements _ListPersonsModel {
  _$_ListPersonsModel({this.errorMessage, this.info, this.results});

  factory _$_ListPersonsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListPersonsModelFromJson(json);

  @override
  final ErrorMessage? errorMessage;
  @override
  final Info? info;
  @override
  final List<ResultPerson>? results;

  @override
  String toString() {
    return 'ListPersonsModel(errorMessage: $errorMessage, info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListPersonsModel &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$ListPersonsModelCopyWith<_ListPersonsModel> get copyWith =>
      __$ListPersonsModelCopyWithImpl<_ListPersonsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListPersonsModelToJson(this);
  }
}

abstract class _ListPersonsModel implements ListPersonsModel {
  factory _ListPersonsModel(
      {ErrorMessage? errorMessage,
      Info? info,
      List<ResultPerson>? results}) = _$_ListPersonsModel;

  factory _ListPersonsModel.fromJson(Map<String, dynamic> json) =
      _$_ListPersonsModel.fromJson;

  @override
  ErrorMessage? get errorMessage => throw _privateConstructorUsedError;
  @override
  Info? get info => throw _privateConstructorUsedError;
  @override
  List<ResultPerson>? get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListPersonsModelCopyWith<_ListPersonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
