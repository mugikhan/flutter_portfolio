// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lambda_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FetchResumeLambdaResponse _$FetchResumeLambdaResponseFromJson(
    Map<String, dynamic> json) {
  return _FetchResumeLambdaResponse.fromJson(json);
}

/// @nodoc
mixin _$FetchResumeLambdaResponse {
  int get statusCode => throw _privateConstructorUsedError;
  List<int> get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchResumeLambdaResponseCopyWith<FetchResumeLambdaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchResumeLambdaResponseCopyWith<$Res> {
  factory $FetchResumeLambdaResponseCopyWith(FetchResumeLambdaResponse value,
          $Res Function(FetchResumeLambdaResponse) then) =
      _$FetchResumeLambdaResponseCopyWithImpl<$Res>;
  $Res call({int statusCode, List<int> body});
}

/// @nodoc
class _$FetchResumeLambdaResponseCopyWithImpl<$Res>
    implements $FetchResumeLambdaResponseCopyWith<$Res> {
  _$FetchResumeLambdaResponseCopyWithImpl(this._value, this._then);

  final FetchResumeLambdaResponse _value;
  // ignore: unused_field
  final $Res Function(FetchResumeLambdaResponse) _then;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$$_FetchResumeLambdaResponseCopyWith<$Res>
    implements $FetchResumeLambdaResponseCopyWith<$Res> {
  factory _$$_FetchResumeLambdaResponseCopyWith(
          _$_FetchResumeLambdaResponse value,
          $Res Function(_$_FetchResumeLambdaResponse) then) =
      __$$_FetchResumeLambdaResponseCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, List<int> body});
}

/// @nodoc
class __$$_FetchResumeLambdaResponseCopyWithImpl<$Res>
    extends _$FetchResumeLambdaResponseCopyWithImpl<$Res>
    implements _$$_FetchResumeLambdaResponseCopyWith<$Res> {
  __$$_FetchResumeLambdaResponseCopyWithImpl(
      _$_FetchResumeLambdaResponse _value,
      $Res Function(_$_FetchResumeLambdaResponse) _then)
      : super(_value, (v) => _then(v as _$_FetchResumeLambdaResponse));

  @override
  _$_FetchResumeLambdaResponse get _value =>
      super._value as _$_FetchResumeLambdaResponse;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_FetchResumeLambdaResponse(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      body: body == freezed
          ? _value._body
          : body // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchResumeLambdaResponse implements _FetchResumeLambdaResponse {
  const _$_FetchResumeLambdaResponse(
      {required this.statusCode, required final List<int> body})
      : _body = body;

  factory _$_FetchResumeLambdaResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FetchResumeLambdaResponseFromJson(json);

  @override
  final int statusCode;
  final List<int> _body;
  @override
  List<int> get body {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_body);
  }

  @override
  String toString() {
    return 'FetchResumeLambdaResponse(statusCode: $statusCode, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchResumeLambdaResponse &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other._body, _body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(_body));

  @JsonKey(ignore: true)
  @override
  _$$_FetchResumeLambdaResponseCopyWith<_$_FetchResumeLambdaResponse>
      get copyWith => __$$_FetchResumeLambdaResponseCopyWithImpl<
          _$_FetchResumeLambdaResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchResumeLambdaResponseToJson(
      this,
    );
  }
}

abstract class _FetchResumeLambdaResponse implements FetchResumeLambdaResponse {
  const factory _FetchResumeLambdaResponse(
      {required final int statusCode,
      required final List<int> body}) = _$_FetchResumeLambdaResponse;

  factory _FetchResumeLambdaResponse.fromJson(Map<String, dynamic> json) =
      _$_FetchResumeLambdaResponse.fromJson;

  @override
  int get statusCode;
  @override
  List<int> get body;
  @override
  @JsonKey(ignore: true)
  _$$_FetchResumeLambdaResponseCopyWith<_$_FetchResumeLambdaResponse>
      get copyWith => throw _privateConstructorUsedError;
}

SendEmailLambdaResponse _$SendEmailLambdaResponseFromJson(
    Map<String, dynamic> json) {
  return _SendEmailLambdaResponse.fromJson(json);
}

/// @nodoc
mixin _$SendEmailLambdaResponse {
  int get statusCode => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendEmailLambdaResponseCopyWith<SendEmailLambdaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendEmailLambdaResponseCopyWith<$Res> {
  factory $SendEmailLambdaResponseCopyWith(SendEmailLambdaResponse value,
          $Res Function(SendEmailLambdaResponse) then) =
      _$SendEmailLambdaResponseCopyWithImpl<$Res>;
  $Res call({int statusCode, String body});
}

/// @nodoc
class _$SendEmailLambdaResponseCopyWithImpl<$Res>
    implements $SendEmailLambdaResponseCopyWith<$Res> {
  _$SendEmailLambdaResponseCopyWithImpl(this._value, this._then);

  final SendEmailLambdaResponse _value;
  // ignore: unused_field
  final $Res Function(SendEmailLambdaResponse) _then;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SendEmailLambdaResponseCopyWith<$Res>
    implements $SendEmailLambdaResponseCopyWith<$Res> {
  factory _$$_SendEmailLambdaResponseCopyWith(_$_SendEmailLambdaResponse value,
          $Res Function(_$_SendEmailLambdaResponse) then) =
      __$$_SendEmailLambdaResponseCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String body});
}

/// @nodoc
class __$$_SendEmailLambdaResponseCopyWithImpl<$Res>
    extends _$SendEmailLambdaResponseCopyWithImpl<$Res>
    implements _$$_SendEmailLambdaResponseCopyWith<$Res> {
  __$$_SendEmailLambdaResponseCopyWithImpl(_$_SendEmailLambdaResponse _value,
      $Res Function(_$_SendEmailLambdaResponse) _then)
      : super(_value, (v) => _then(v as _$_SendEmailLambdaResponse));

  @override
  _$_SendEmailLambdaResponse get _value =>
      super._value as _$_SendEmailLambdaResponse;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_SendEmailLambdaResponse(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendEmailLambdaResponse implements _SendEmailLambdaResponse {
  const _$_SendEmailLambdaResponse(
      {required this.statusCode, required this.body});

  factory _$_SendEmailLambdaResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SendEmailLambdaResponseFromJson(json);

  @override
  final int statusCode;
  @override
  final String body;

  @override
  String toString() {
    return 'SendEmailLambdaResponse(statusCode: $statusCode, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendEmailLambdaResponse &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_SendEmailLambdaResponseCopyWith<_$_SendEmailLambdaResponse>
      get copyWith =>
          __$$_SendEmailLambdaResponseCopyWithImpl<_$_SendEmailLambdaResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendEmailLambdaResponseToJson(
      this,
    );
  }
}

abstract class _SendEmailLambdaResponse implements SendEmailLambdaResponse {
  const factory _SendEmailLambdaResponse(
      {required final int statusCode,
      required final String body}) = _$_SendEmailLambdaResponse;

  factory _SendEmailLambdaResponse.fromJson(Map<String, dynamic> json) =
      _$_SendEmailLambdaResponse.fromJson;

  @override
  int get statusCode;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_SendEmailLambdaResponseCopyWith<_$_SendEmailLambdaResponse>
      get copyWith => throw _privateConstructorUsedError;
}
