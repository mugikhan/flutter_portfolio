import 'package:freezed_annotation/freezed_annotation.dart';

part 'email.freezed.dart';
part 'email.g.dart';

@freezed
class Email with _$Email {
  const factory Email({
    required String name,
    required String email,
    required String service,
    required String message,
  }) = _Email;

  factory Email.fromJson(Map<String, Object?> json) => _$EmailFromJson(json);
}
