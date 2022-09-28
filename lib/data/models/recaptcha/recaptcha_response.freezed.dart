// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recaptcha_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecaptchaResponse _$RecaptchaResponseFromJson(Map<String, dynamic> json) {
  return _RecaptchaResponse.fromJson(json);
}

/// @nodoc
mixin _$RecaptchaResponse {
  bool get success => throw _privateConstructorUsedError;
  DateTime get challengeTimeStamp => throw _privateConstructorUsedError;
  String get hostName => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  List<String> get errorCodes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecaptchaResponseCopyWith<RecaptchaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecaptchaResponseCopyWith<$Res> {
  factory $RecaptchaResponseCopyWith(
          RecaptchaResponse value, $Res Function(RecaptchaResponse) then) =
      _$RecaptchaResponseCopyWithImpl<$Res>;
  $Res call(
      {bool success,
      DateTime challengeTimeStamp,
      String hostName,
      double score,
      String action,
      List<String> errorCodes});
}

/// @nodoc
class _$RecaptchaResponseCopyWithImpl<$Res>
    implements $RecaptchaResponseCopyWith<$Res> {
  _$RecaptchaResponseCopyWithImpl(this._value, this._then);

  final RecaptchaResponse _value;
  // ignore: unused_field
  final $Res Function(RecaptchaResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? challengeTimeStamp = freezed,
    Object? hostName = freezed,
    Object? score = freezed,
    Object? action = freezed,
    Object? errorCodes = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      challengeTimeStamp: challengeTimeStamp == freezed
          ? _value.challengeTimeStamp
          : challengeTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hostName: hostName == freezed
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      errorCodes: errorCodes == freezed
          ? _value.errorCodes
          : errorCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_RecaptchaResponseCopyWith<$Res>
    implements $RecaptchaResponseCopyWith<$Res> {
  factory _$$_RecaptchaResponseCopyWith(_$_RecaptchaResponse value,
          $Res Function(_$_RecaptchaResponse) then) =
      __$$_RecaptchaResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool success,
      DateTime challengeTimeStamp,
      String hostName,
      double score,
      String action,
      List<String> errorCodes});
}

/// @nodoc
class __$$_RecaptchaResponseCopyWithImpl<$Res>
    extends _$RecaptchaResponseCopyWithImpl<$Res>
    implements _$$_RecaptchaResponseCopyWith<$Res> {
  __$$_RecaptchaResponseCopyWithImpl(
      _$_RecaptchaResponse _value, $Res Function(_$_RecaptchaResponse) _then)
      : super(_value, (v) => _then(v as _$_RecaptchaResponse));

  @override
  _$_RecaptchaResponse get _value => super._value as _$_RecaptchaResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? challengeTimeStamp = freezed,
    Object? hostName = freezed,
    Object? score = freezed,
    Object? action = freezed,
    Object? errorCodes = freezed,
  }) {
    return _then(_$_RecaptchaResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      challengeTimeStamp: challengeTimeStamp == freezed
          ? _value.challengeTimeStamp
          : challengeTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hostName: hostName == freezed
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      errorCodes: errorCodes == freezed
          ? _value._errorCodes
          : errorCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecaptchaResponse implements _RecaptchaResponse {
  const _$_RecaptchaResponse(
      {required this.success,
      required this.challengeTimeStamp,
      required this.hostName,
      required this.score,
      required this.action,
      final List<String> errorCodes = const []})
      : _errorCodes = errorCodes;

  factory _$_RecaptchaResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RecaptchaResponseFromJson(json);

  @override
  final bool success;
  @override
  final DateTime challengeTimeStamp;
  @override
  final String hostName;
  @override
  final double score;
  @override
  final String action;
  final List<String> _errorCodes;
  @override
  @JsonKey()
  List<String> get errorCodes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errorCodes);
  }

  @override
  String toString() {
    return 'RecaptchaResponse(success: $success, challengeTimeStamp: $challengeTimeStamp, hostName: $hostName, score: $score, action: $action, errorCodes: $errorCodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecaptchaResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality()
                .equals(other.challengeTimeStamp, challengeTimeStamp) &&
            const DeepCollectionEquality().equals(other.hostName, hostName) &&
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality()
                .equals(other._errorCodes, _errorCodes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(challengeTimeStamp),
      const DeepCollectionEquality().hash(hostName),
      const DeepCollectionEquality().hash(score),
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(_errorCodes));

  @JsonKey(ignore: true)
  @override
  _$$_RecaptchaResponseCopyWith<_$_RecaptchaResponse> get copyWith =>
      __$$_RecaptchaResponseCopyWithImpl<_$_RecaptchaResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecaptchaResponseToJson(
      this,
    );
  }
}

abstract class _RecaptchaResponse implements RecaptchaResponse {
  const factory _RecaptchaResponse(
      {required final bool success,
      required final DateTime challengeTimeStamp,
      required final String hostName,
      required final double score,
      required final String action,
      final List<String> errorCodes}) = _$_RecaptchaResponse;

  factory _RecaptchaResponse.fromJson(Map<String, dynamic> json) =
      _$_RecaptchaResponse.fromJson;

  @override
  bool get success;
  @override
  DateTime get challengeTimeStamp;
  @override
  String get hostName;
  @override
  double get score;
  @override
  String get action;
  @override
  List<String> get errorCodes;
  @override
  @JsonKey(ignore: true)
  _$$_RecaptchaResponseCopyWith<_$_RecaptchaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
