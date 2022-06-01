// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result_preson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultPerson _$ResultPersonFromJson(Map<String, dynamic> json) {
  return _ResultPerson.fromJson(json);
}

/// @nodoc
class _$ResultPersonTearOff {
  const _$ResultPersonTearOff();

  _ResultPerson call(
      {int? id,
      String? name,
      String? status,
      String? species,
      String? gender,
      String? image,
      DateTime? created}) {
    return _ResultPerson(
      id: id,
      name: name,
      status: status,
      species: species,
      gender: gender,
      image: image,
      created: created,
    );
  }

  ResultPerson fromJson(Map<String, Object> json) {
    return ResultPerson.fromJson(json);
  }
}

/// @nodoc
const $ResultPerson = _$ResultPersonTearOff();

/// @nodoc
mixin _$ResultPerson {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get species => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultPersonCopyWith<ResultPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultPersonCopyWith<$Res> {
  factory $ResultPersonCopyWith(
          ResultPerson value, $Res Function(ResultPerson) then) =
      _$ResultPersonCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? status,
      String? species,
      String? gender,
      String? image,
      DateTime? created});
}

/// @nodoc
class _$ResultPersonCopyWithImpl<$Res> implements $ResultPersonCopyWith<$Res> {
  _$ResultPersonCopyWithImpl(this._value, this._then);

  final ResultPerson _value;
  // ignore: unused_field
  final $Res Function(ResultPerson) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? gender = freezed,
    Object? image = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ResultPersonCopyWith<$Res>
    implements $ResultPersonCopyWith<$Res> {
  factory _$ResultPersonCopyWith(
          _ResultPerson value, $Res Function(_ResultPerson) then) =
      __$ResultPersonCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? status,
      String? species,
      String? gender,
      String? image,
      DateTime? created});
}

/// @nodoc
class __$ResultPersonCopyWithImpl<$Res> extends _$ResultPersonCopyWithImpl<$Res>
    implements _$ResultPersonCopyWith<$Res> {
  __$ResultPersonCopyWithImpl(
      _ResultPerson _value, $Res Function(_ResultPerson) _then)
      : super(_value, (v) => _then(v as _ResultPerson));

  @override
  _ResultPerson get _value => super._value as _ResultPerson;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? gender = freezed,
    Object? image = freezed,
    Object? created = freezed,
  }) {
    return _then(_ResultPerson(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$_ResultPerson implements _ResultPerson {
  _$_ResultPerson(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.gender,
      this.image,
      this.created});

  factory _$_ResultPerson.fromJson(Map<String, dynamic> json) =>
      _$$_ResultPersonFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? status;
  @override
  final String? species;
  @override
  final String? gender;
  @override
  final String? image;
  @override
  final DateTime? created;

  @override
  String toString() {
    return 'ResultPerson(id: $id, name: $name, status: $status, species: $species, gender: $gender, image: $image, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultPerson &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.species, species) ||
                const DeepCollectionEquality()
                    .equals(other.species, species)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(species) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(created);

  @JsonKey(ignore: true)
  @override
  _$ResultPersonCopyWith<_ResultPerson> get copyWith =>
      __$ResultPersonCopyWithImpl<_ResultPerson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultPersonToJson(this);
  }
}

abstract class _ResultPerson implements ResultPerson {
  factory _ResultPerson(
      {int? id,
      String? name,
      String? status,
      String? species,
      String? gender,
      String? image,
      DateTime? created}) = _$_ResultPerson;

  factory _ResultPerson.fromJson(Map<String, dynamic> json) =
      _$_ResultPerson.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get species => throw _privateConstructorUsedError;
  @override
  String? get gender => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  DateTime? get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResultPersonCopyWith<_ResultPerson> get copyWith =>
      throw _privateConstructorUsedError;
}
