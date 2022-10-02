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
  List<int> get data => throw _privateConstructorUsedError;

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
  $Res call({int statusCode, List<int> data});
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
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
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
  $Res call({int statusCode, List<int> data});
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
    Object? data = freezed,
  }) {
    return _then(_$_FetchResumeLambdaResponse(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchResumeLambdaResponse implements _FetchResumeLambdaResponse {
  const _$_FetchResumeLambdaResponse(
      {required this.statusCode, required final List<int> data})
      : _data = data;

  factory _$_FetchResumeLambdaResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FetchResumeLambdaResponseFromJson(json);

  @override
  final int statusCode;
  final List<int> _data;
  @override
  List<int> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FetchResumeLambdaResponse(statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchResumeLambdaResponse &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(_data));

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
      required final List<int> data}) = _$_FetchResumeLambdaResponse;

  factory _FetchResumeLambdaResponse.fromJson(Map<String, dynamic> json) =
      _$_FetchResumeLambdaResponse.fromJson;

  @override
  int get statusCode;
  @override
  List<int> get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchResumeLambdaResponseCopyWith<_$_FetchResumeLambdaResponse>
      get copyWith => throw _privateConstructorUsedError;
}
