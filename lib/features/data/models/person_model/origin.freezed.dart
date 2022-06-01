// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'origin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Origin _$OriginFromJson(Map<String, dynamic> json) {
  return _Origin.fromJson(json);
}

/// @nodoc
class _$OriginTearOff {
  const _$OriginTearOff();

  _Origin call({String? name, String? url}) {
    return _Origin(
      name: name,
      url: url,
    );
  }

  Origin fromJson(Map<String, Object> json) {
    return Origin.fromJson(json);
  }
}

/// @nodoc
const $Origin = _$OriginTearOff();

/// @nodoc
mixin _$Origin {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OriginCopyWith<Origin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginCopyWith<$Res> {
  factory $OriginCopyWith(Origin value, $Res Function(Origin) then) =
      _$OriginCopyWithImpl<$Res>;
  $Res call({String? name, String? url});
}

/// @nodoc
class _$OriginCopyWithImpl<$Res> implements $OriginCopyWith<$Res> {
  _$OriginCopyWithImpl(this._value, this._then);

  final Origin _value;
  // ignore: unused_field
  final $Res Function(Origin) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OriginCopyWith<$Res> implements $OriginCopyWith<$Res> {
  factory _$OriginCopyWith(_Origin value, $Res Function(_Origin) then) =
      __$OriginCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? url});
}

/// @nodoc
class __$OriginCopyWithImpl<$Res> extends _$OriginCopyWithImpl<$Res>
    implements _$OriginCopyWith<$Res> {
  __$OriginCopyWithImpl(_Origin _value, $Res Function(_Origin) _then)
      : super(_value, (v) => _then(v as _Origin));

  @override
  _Origin get _value => super._value as _Origin;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_Origin(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Origin implements _Origin {
  _$_Origin({this.name, this.url});

  factory _$_Origin.fromJson(Map<String, dynamic> json) =>
      _$$_OriginFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'Origin(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Origin &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$OriginCopyWith<_Origin> get copyWith =>
      __$OriginCopyWithImpl<_Origin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OriginToJson(this);
  }
}

abstract class _Origin implements Origin {
  factory _Origin({String? name, String? url}) = _$_Origin;

  factory _Origin.fromJson(Map<String, dynamic> json) = _$_Origin.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OriginCopyWith<_Origin> get copyWith => throw _privateConstructorUsedError;
}
