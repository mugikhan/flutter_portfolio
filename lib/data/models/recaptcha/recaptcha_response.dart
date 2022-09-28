import 'package:freezed_annotation/freezed_annotation.dart';

part 'recaptcha_response.freezed.dart';
part 'recaptcha_response.g.dart';

@freezed
class RecaptchaResponse with _$RecaptchaResponse {
  const factory RecaptchaResponse({
    required bool success,
    required DateTime challengeTimeStamp,
    required String hostName,
    required double score,
    required String action,
    @Default([]) List<String> errorCodes,
  }) = _RecaptchaResponse;

  factory RecaptchaResponse.fromJson(Map<String, Object?> json) =>
      _$RecaptchaResponseFromJson(json);
}
