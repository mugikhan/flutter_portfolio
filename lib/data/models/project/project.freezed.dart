// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  String get project => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get appPhotos => throw _privateConstructorUsedError;
  String get projectLink => throw _privateConstructorUsedError;
  Map<String, String> get techUsed => throw _privateConstructorUsedError;
  String? get buttonText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res>;
  $Res call(
      {String project,
      String title,
      String description,
      String appPhotos,
      String projectLink,
      Map<String, String> techUsed,
      String? buttonText});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res> implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  final Project _value;
  // ignore: unused_field
  final $Res Function(Project) _then;

  @override
  $Res call({
    Object? project = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? appPhotos = freezed,
    Object? projectLink = freezed,
    Object? techUsed = freezed,
    Object? buttonText = freezed,
  }) {
    return _then(_value.copyWith(
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      appPhotos: appPhotos == freezed
          ? _value.appPhotos
          : appPhotos // ignore: cast_nullable_to_non_nullable
              as String,
      projectLink: projectLink == freezed
          ? _value.projectLink
          : projectLink // ignore: cast_nullable_to_non_nullable
              as String,
      techUsed: techUsed == freezed
          ? _value.techUsed
          : techUsed // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      buttonText: buttonText == freezed
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$_ProjectCopyWith(
          _$_Project value, $Res Function(_$_Project) then) =
      __$$_ProjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {String project,
      String title,
      String description,
      String appPhotos,
      String projectLink,
      Map<String, String> techUsed,
      String? buttonText});
}

/// @nodoc
class __$$_ProjectCopyWithImpl<$Res> extends _$ProjectCopyWithImpl<$Res>
    implements _$$_ProjectCopyWith<$Res> {
  __$$_ProjectCopyWithImpl(_$_Project _value, $Res Function(_$_Project) _then)
      : super(_value, (v) => _then(v as _$_Project));

  @override
  _$_Project get _value => super._value as _$_Project;

  @override
  $Res call({
    Object? project = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? appPhotos = freezed,
    Object? projectLink = freezed,
    Object? techUsed = freezed,
    Object? buttonText = freezed,
  }) {
    return _then(_$_Project(
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      appPhotos: appPhotos == freezed
          ? _value.appPhotos
          : appPhotos // ignore: cast_nullable_to_non_nullable
              as String,
      projectLink: projectLink == freezed
          ? _value.projectLink
          : projectLink // ignore: cast_nullable_to_non_nullable
              as String,
      techUsed: techUsed == freezed
          ? _value._techUsed
          : techUsed // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      buttonText: buttonText == freezed
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Project implements _Project {
  const _$_Project(
      {required this.project,
      required this.title,
      required this.description,
      required this.appPhotos,
      required this.projectLink,
      required final Map<String, String> techUsed,
      required this.buttonText})
      : _techUsed = techUsed;

  factory _$_Project.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectFromJson(json);

  @override
  final String project;
  @override
  final String title;
  @override
  final String description;
  @override
  final String appPhotos;
  @override
  final String projectLink;
  final Map<String, String> _techUsed;
  @override
  Map<String, String> get techUsed {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_techUsed);
  }

  @override
  final String? buttonText;

  @override
  String toString() {
    return 'Project(project: $project, title: $title, description: $description, appPhotos: $appPhotos, projectLink: $projectLink, techUsed: $techUsed, buttonText: $buttonText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Project &&
            const DeepCollectionEquality().equals(other.project, project) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.appPhotos, appPhotos) &&
            const DeepCollectionEquality()
                .equals(other.projectLink, projectLink) &&
            const DeepCollectionEquality().equals(other._techUsed, _techUsed) &&
            const DeepCollectionEquality()
                .equals(other.buttonText, buttonText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(project),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(appPhotos),
      const DeepCollectionEquality().hash(projectLink),
      const DeepCollectionEquality().hash(_techUsed),
      const DeepCollectionEquality().hash(buttonText));

  @JsonKey(ignore: true)
  @override
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      __$$_ProjectCopyWithImpl<_$_Project>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  const factory _Project(
      {required final String project,
      required final String title,
      required final String description,
      required final String appPhotos,
      required final String projectLink,
      required final Map<String, String> techUsed,
      required final String? buttonText}) = _$_Project;

  factory _Project.fromJson(Map<String, dynamic> json) = _$_Project.fromJson;

  @override
  String get project;
  @override
  String get title;
  @override
  String get description;
  @override
  String get appPhotos;
  @override
  String get projectLink;
  @override
  Map<String, String> get techUsed;
  @override
  String? get buttonText;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      throw _privateConstructorUsedError;
}
