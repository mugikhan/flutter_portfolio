// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lambda_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FetchResumeLambdaResponse _$$_FetchResumeLambdaResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FetchResumeLambdaResponse(
      statusCode: json['statusCode'] as int,
      body: (json['body'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_FetchResumeLambdaResponseToJson(
        _$_FetchResumeLambdaResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'body': instance.body,
    };

_$_SendEmailLambdaResponse _$$_SendEmailLambdaResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SendEmailLambdaResponse(
      statusCode: json['statusCode'] as int,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$_SendEmailLambdaResponseToJson(
        _$_SendEmailLambdaResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'body': instance.body,
    };
