// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_episodes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListEpisodesModel _$ListEpisodesModelFromJson(Map<String, dynamic> json) {
  return _ListEpisodesModel.fromJson(json);
}

/// @nodoc
class _$ListEpisodesModelTearOff {
  const _$ListEpisodesModelTearOff();

  _ListEpisodesModel call({Info? info, List<ResultEpisode>? results}) {
    return _ListEpisodesModel(
      info: info,
      results: results,
    );
  }

  ListEpisodesModel fromJson(Map<String, Object> json) {
    return ListEpisodesModel.fromJson(json);
  }
}

/// @nodoc
const $ListEpisodesModel = _$ListEpisodesModelTearOff();

/// @nodoc
mixin _$ListEpisodesModel {
  Info? get info => throw _privateConstructorUsedError;
  List<ResultEpisode>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListEpisodesModelCopyWith<ListEpisodesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListEpisodesModelCopyWith<$Res> {
  factory $ListEpisodesModelCopyWith(
          ListEpisodesModel value, $Res Function(ListEpisodesModel) then) =
      _$ListEpisodesModelCopyWithImpl<$Res>;
  $Res call({Info? info, List<ResultEpisode>? results});

  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$ListEpisodesModelCopyWithImpl<$Res>
    implements $ListEpisodesModelCopyWith<$Res> {
  _$ListEpisodesModelCopyWithImpl(this._value, this._then);

  final ListEpisodesModel _value;
  // ignore: unused_field
  final $Res Function(ListEpisodesModel) _then;

  @override
  $Res call({
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultEpisode>?,
    ));
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
abstract class _$ListEpisodesModelCopyWith<$Res>
    implements $ListEpisodesModelCopyWith<$Res> {
  factory _$ListEpisodesModelCopyWith(
          _ListEpisodesModel value, $Res Function(_ListEpisodesModel) then) =
      __$ListEpisodesModelCopyWithImpl<$Res>;
  @override
  $Res call({Info? info, List<ResultEpisode>? results});

  @override
  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$ListEpisodesModelCopyWithImpl<$Res>
    extends _$ListEpisodesModelCopyWithImpl<$Res>
    implements _$ListEpisodesModelCopyWith<$Res> {
  __$ListEpisodesModelCopyWithImpl(
      _ListEpisodesModel _value, $Res Function(_ListEpisodesModel) _then)
      : super(_value, (v) => _then(v as _ListEpisodesModel));

  @override
  _ListEpisodesModel get _value => super._value as _ListEpisodesModel;

  @override
  $Res call({
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_ListEpisodesModel(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultEpisode>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListEpisodesModel implements _ListEpisodesModel {
  _$_ListEpisodesModel({this.info, this.results});

  factory _$_ListEpisodesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListEpisodesModelFromJson(json);

  @override
  final Info? info;
  @override
  final List<ResultEpisode>? results;

  @override
  String toString() {
    return 'ListEpisodesModel(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListEpisodesModel &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$ListEpisodesModelCopyWith<_ListEpisodesModel> get copyWith =>
      __$ListEpisodesModelCopyWithImpl<_ListEpisodesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListEpisodesModelToJson(this);
  }
}

abstract class _ListEpisodesModel implements ListEpisodesModel {
  factory _ListEpisodesModel({Info? info, List<ResultEpisode>? results}) =
      _$_ListEpisodesModel;

  factory _ListEpisodesModel.fromJson(Map<String, dynamic> json) =
      _$_ListEpisodesModel.fromJson;

  @override
  Info? get info => throw _privateConstructorUsedError;
  @override
  List<ResultEpisode>? get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListEpisodesModelCopyWith<_ListEpisodesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
