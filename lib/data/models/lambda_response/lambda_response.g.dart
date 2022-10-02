// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lambda_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FetchResumeLambdaResponse _$$_FetchResumeLambdaResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FetchResumeLambdaResponse(
      statusCode: json['statusCode'] as int,
      data: (json['data'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_FetchResumeLambdaResponseToJson(
        _$_FetchResumeLambdaResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
    };
