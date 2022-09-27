// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Employment _$$_EmploymentFromJson(Map<String, dynamic> json) =>
    _$_Employment(
      institute: json['institute'] as String,
      position: json['position'] as String,
      duration: json['duration'] as String,
      description: json['description'] as String,
      skills: Map<String, String>.from(json['skills'] as Map),
    );

Map<String, dynamic> _$$_EmploymentToJson(_$_Employment instance) =>
    <String, dynamic>{
      'institute': instance.institute,
      'position': instance.position,
      'duration': instance.duration,
      'description': instance.description,
      'skills': instance.skills,
    };
