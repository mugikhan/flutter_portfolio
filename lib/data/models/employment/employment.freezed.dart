// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Employment _$EmploymentFromJson(Map<String, dynamic> json) {
  return _Employment.fromJson(json);
}

/// @nodoc
mixin _$Employment {
  String get institute => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Map<String, String> get skills => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmploymentCopyWith<Employment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmploymentCopyWith<$Res> {
  factory $EmploymentCopyWith(
          Employment value, $Res Function(Employment) then) =
      _$EmploymentCopyWithImpl<$Res>;
  $Res call(
      {String institute,
      String position,
      String duration,
      String description,
      Map<String, String> skills});
}

/// @nodoc
class _$EmploymentCopyWithImpl<$Res> implements $EmploymentCopyWith<$Res> {
  _$EmploymentCopyWithImpl(this._value, this._then);

  final Employment _value;
  // ignore: unused_field
  final $Res Function(Employment) _then;

  @override
  $Res call({
    Object? institute = freezed,
    Object? position = freezed,
    Object? duration = freezed,
    Object? description = freezed,
    Object? skills = freezed,
  }) {
    return _then(_value.copyWith(
      institute: institute == freezed
          ? _value.institute
          : institute // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$$_EmploymentCopyWith<$Res>
    implements $EmploymentCopyWith<$Res> {
  factory _$$_EmploymentCopyWith(
          _$_Employment value, $Res Function(_$_Employment) then) =
      __$$_EmploymentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String institute,
      String position,
      String duration,
      String description,
      Map<String, String> skills});
}

/// @nodoc
class __$$_EmploymentCopyWithImpl<$Res> extends _$EmploymentCopyWithImpl<$Res>
    implements _$$_EmploymentCopyWith<$Res> {
  __$$_EmploymentCopyWithImpl(
      _$_Employment _value, $Res Function(_$_Employment) _then)
      : super(_value, (v) => _then(v as _$_Employment));

  @override
  _$_Employment get _value => super._value as _$_Employment;

  @override
  $Res call({
    Object? institute = freezed,
    Object? position = freezed,
    Object? duration = freezed,
    Object? description = freezed,
    Object? skills = freezed,
  }) {
    return _then(_$_Employment(
      institute: institute == freezed
          ? _value.institute
          : institute // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      skills: skills == freezed
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Employment implements _Employment {
  const _$_Employment(
      {required this.institute,
      required this.position,
      required this.duration,
      required this.description,
      required final Map<String, String> skills})
      : _skills = skills;

  factory _$_Employment.fromJson(Map<String, dynamic> json) =>
      _$$_EmploymentFromJson(json);

  @override
  final String institute;
  @override
  final String position;
  @override
  final String duration;
  @override
  final String description;
  final Map<String, String> _skills;
  @override
  Map<String, String> get skills {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_skills);
  }

  @override
  String toString() {
    return 'Employment(institute: $institute, position: $position, duration: $duration, description: $description, skills: $skills)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Employment &&
            const DeepCollectionEquality().equals(other.institute, institute) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other._skills, _skills));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(institute),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_skills));

  @JsonKey(ignore: true)
  @override
  _$$_EmploymentCopyWith<_$_Employment> get copyWith =>
      __$$_EmploymentCopyWithImpl<_$_Employment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmploymentToJson(
      this,
    );
  }
}

abstract class _Employment implements Employment {
  const factory _Employment(
      {required final String institute,
      required final String position,
      required final String duration,
      required final String description,
      required final Map<String, String> skills}) = _$_Employment;

  factory _Employment.fromJson(Map<String, dynamic> json) =
      _$_Employment.fromJson;

  @override
  String get institute;
  @override
  String get position;
  @override
  String get duration;
  @override
  String get description;
  @override
  Map<String, String> get skills;
  @override
  @JsonKey(ignore: true)
  _$$_EmploymentCopyWith<_$_Employment> get copyWith =>
      throw _privateConstructorUsedError;
}
