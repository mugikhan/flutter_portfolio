// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recaptcha_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecaptchaResponse _$$_RecaptchaResponseFromJson(Map<String, dynamic> json) =>
    _$_RecaptchaResponse(
      success: json['success'] as bool,
      challengeTimeStamp: DateTime.parse(json['challengeTimeStamp'] as String),
      hostName: json['hostName'] as String,
      score: (json['score'] as num).toDouble(),
      action: json['action'] as String,
      errorCodes: (json['errorCodes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_RecaptchaResponseToJson(
        _$_RecaptchaResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'challengeTimeStamp': instance.challengeTimeStamp.toIso8601String(),
      'hostName': instance.hostName,
      'score': instance.score,
      'action': instance.action,
      'errorCodes': instance.errorCodes,
    };
