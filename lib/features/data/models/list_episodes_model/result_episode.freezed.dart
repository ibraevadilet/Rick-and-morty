// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result_episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultEpisode _$ResultEpisodeFromJson(Map<String, dynamic> json) {
  return _ResultEpisode.fromJson(json);
}

/// @nodoc
class _$ResultEpisodeTearOff {
  const _$ResultEpisodeTearOff();

  _ResultEpisode call(
      {int? id,
      String? name,
      @JsonKey(name: 'air_date') String? airDate,
      String? episode,
      DateTime? created}) {
    return _ResultEpisode(
      id: id,
      name: name,
      airDate: airDate,
      episode: episode,
      created: created,
    );
  }

  ResultEpisode fromJson(Map<String, Object> json) {
    return ResultEpisode.fromJson(json);
  }
}

/// @nodoc
const $ResultEpisode = _$ResultEpisodeTearOff();

/// @nodoc
mixin _$ResultEpisode {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'air_date')
  String? get airDate => throw _privateConstructorUsedError;
  String? get episode => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultEpisodeCopyWith<ResultEpisode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultEpisodeCopyWith<$Res> {
  factory $ResultEpisodeCopyWith(
          ResultEpisode value, $Res Function(ResultEpisode) then) =
      _$ResultEpisodeCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'air_date') String? airDate,
      String? episode,
      DateTime? created});
}

/// @nodoc
class _$ResultEpisodeCopyWithImpl<$Res>
    implements $ResultEpisodeCopyWith<$Res> {
  _$ResultEpisodeCopyWithImpl(this._value, this._then);

  final ResultEpisode _value;
  // ignore: unused_field
  final $Res Function(ResultEpisode) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? airDate = freezed,
    Object? episode = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      airDate: airDate == freezed
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ResultEpisodeCopyWith<$Res>
    implements $ResultEpisodeCopyWith<$Res> {
  factory _$ResultEpisodeCopyWith(
          _ResultEpisode value, $Res Function(_ResultEpisode) then) =
      __$ResultEpisodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'air_date') String? airDate,
      String? episode,
      DateTime? created});
}

/// @nodoc
class __$ResultEpisodeCopyWithImpl<$Res>
    extends _$ResultEpisodeCopyWithImpl<$Res>
    implements _$ResultEpisodeCopyWith<$Res> {
  __$ResultEpisodeCopyWithImpl(
      _ResultEpisode _value, $Res Function(_ResultEpisode) _then)
      : super(_value, (v) => _then(v as _ResultEpisode));

  @override
  _ResultEpisode get _value => super._value as _ResultEpisode;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? airDate = freezed,
    Object? episode = freezed,
    Object? created = freezed,
  }) {
    return _then(_ResultEpisode(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      airDate: airDate == freezed
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultEpisode implements _ResultEpisode {
  _$_ResultEpisode(
      {this.id,
      this.name,
      @JsonKey(name: 'air_date') this.airDate,
      this.episode,
      this.created});

  factory _$_ResultEpisode.fromJson(Map<String, dynamic> json) =>
      _$$_ResultEpisodeFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'air_date')
  final String? airDate;
  @override
  final String? episode;
  @override
  final DateTime? created;

  @override
  String toString() {
    return 'ResultEpisode(id: $id, name: $name, airDate: $airDate, episode: $episode, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultEpisode &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.airDate, airDate) ||
                const DeepCollectionEquality()
                    .equals(other.airDate, airDate)) &&
            (identical(other.episode, episode) ||
                const DeepCollectionEquality()
                    .equals(other.episode, episode)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(airDate) ^
      const DeepCollectionEquality().hash(episode) ^
      const DeepCollectionEquality().hash(created);

  @JsonKey(ignore: true)
  @override
  _$ResultEpisodeCopyWith<_ResultEpisode> get copyWith =>
      __$ResultEpisodeCopyWithImpl<_ResultEpisode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultEpisodeToJson(this);
  }
}

abstract class _ResultEpisode implements ResultEpisode {
  factory _ResultEpisode(
      {int? id,
      String? name,
      @JsonKey(name: 'air_date') String? airDate,
      String? episode,
      DateTime? created}) = _$_ResultEpisode;

  factory _ResultEpisode.fromJson(Map<String, dynamic> json) =
      _$_ResultEpisode.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'air_date')
  String? get airDate => throw _privateConstructorUsedError;
  @override
  String? get episode => throw _privateConstructorUsedError;
  @override
  DateTime? get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResultEpisodeCopyWith<_ResultEpisode> get copyWith =>
      throw _privateConstructorUsedError;
}
