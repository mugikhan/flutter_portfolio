import 'package:freezed_annotation/freezed_annotation.dart';

part 'employment.freezed.dart';
part 'employment.g.dart';

@freezed
class Employment with _$Employment {
  const factory Employment({
    required String institute,
    required String duration,
    required String description,
    required Map<String, String> skills,
  }) = _Employment;

  factory Employment.fromJson(Map<String, Object?> json) =>
      _$EmploymentFromJson(json);
}
