// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Project _$$_ProjectFromJson(Map<String, dynamic> json) => _$_Project(
      project: json['project'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      appPhotos: json['appPhotos'] as String,
      projectLink: json['projectLink'] as String,
      techUsed: Map<String, String>.from(json['techUsed'] as Map),
      buttonText: json['buttonText'] as String?,
    );

Map<String, dynamic> _$$_ProjectToJson(_$_Project instance) =>
    <String, dynamic>{
      'project': instance.project,
      'title': instance.title,
      'description': instance.description,
      'appPhotos': instance.appPhotos,
      'projectLink': instance.projectLink,
      'techUsed': instance.techUsed,
      'buttonText': instance.buttonText,
    };
