import 'package:freezed_annotation/freezed_annotation.dart';

part 'lambda_response.freezed.dart';
part 'lambda_response.g.dart';

@freezed
class FetchResumeLambdaResponse with _$FetchResumeLambdaResponse {
  const factory FetchResumeLambdaResponse({
    required int statusCode,
    required List<int> body,
  }) = _FetchResumeLambdaResponse;

  factory FetchResumeLambdaResponse.fromJson(Map<String, Object?> json) =>
      _$FetchResumeLambdaResponseFromJson(json);
}

@freezed
class SendEmailLambdaResponse with _$SendEmailLambdaResponse {
  const factory SendEmailLambdaResponse({
    required int statusCode,
    required String body,
  }) = _SendEmailLambdaResponse;

  factory SendEmailLambdaResponse.fromJson(Map<String, Object?> json) =>
      _$SendEmailLambdaResponseFromJson(json);
}
