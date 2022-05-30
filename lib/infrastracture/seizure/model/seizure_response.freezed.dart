// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seizure_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeizureResponse _$SeizureResponseFromJson(Map<String, dynamic> json) {
  return _SeizureResponse.fromJson(json);
}

/// @nodoc
mixin _$SeizureResponse {
  List<SeizureModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeizureResponseCopyWith<SeizureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeizureResponseCopyWith<$Res> {
  factory $SeizureResponseCopyWith(
          SeizureResponse value, $Res Function(SeizureResponse) then) =
      _$SeizureResponseCopyWithImpl<$Res>;
  $Res call({List<SeizureModel> data});
}

/// @nodoc
class _$SeizureResponseCopyWithImpl<$Res>
    implements $SeizureResponseCopyWith<$Res> {
  _$SeizureResponseCopyWithImpl(this._value, this._then);

  final SeizureResponse _value;
  // ignore: unused_field
  final $Res Function(SeizureResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SeizureModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_SeizureResponseCopyWith<$Res>
    implements $SeizureResponseCopyWith<$Res> {
  factory _$$_SeizureResponseCopyWith(
          _$_SeizureResponse value, $Res Function(_$_SeizureResponse) then) =
      __$$_SeizureResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<SeizureModel> data});
}

/// @nodoc
class __$$_SeizureResponseCopyWithImpl<$Res>
    extends _$SeizureResponseCopyWithImpl<$Res>
    implements _$$_SeizureResponseCopyWith<$Res> {
  __$$_SeizureResponseCopyWithImpl(
      _$_SeizureResponse _value, $Res Function(_$_SeizureResponse) _then)
      : super(_value, (v) => _then(v as _$_SeizureResponse));

  @override
  _$_SeizureResponse get _value => super._value as _$_SeizureResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_SeizureResponse(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SeizureModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeizureResponse implements _SeizureResponse {
  const _$_SeizureResponse({required final List<SeizureModel> data})
      : _data = data;

  factory _$_SeizureResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SeizureResponseFromJson(json);

  final List<SeizureModel> _data;
  @override
  List<SeizureModel> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SeizureResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeizureResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_SeizureResponseCopyWith<_$_SeizureResponse> get copyWith =>
      __$$_SeizureResponseCopyWithImpl<_$_SeizureResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeizureResponseToJson(this);
  }
}

abstract class _SeizureResponse implements SeizureResponse {
  const factory _SeizureResponse({required final List<SeizureModel> data}) =
      _$_SeizureResponse;

  factory _SeizureResponse.fromJson(Map<String, dynamic> json) =
      _$_SeizureResponse.fromJson;

  @override
  List<SeizureModel> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SeizureResponseCopyWith<_$_SeizureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SeizureStoreResponse _$SeizureStoreResponseFromJson(Map<String, dynamic> json) {
  return _SeizureStoreResponse.fromJson(json);
}

/// @nodoc
mixin _$SeizureStoreResponse {
  SeizureModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeizureStoreResponseCopyWith<SeizureStoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeizureStoreResponseCopyWith<$Res> {
  factory $SeizureStoreResponseCopyWith(SeizureStoreResponse value,
          $Res Function(SeizureStoreResponse) then) =
      _$SeizureStoreResponseCopyWithImpl<$Res>;
  $Res call({SeizureModel data});

  $SeizureModelCopyWith<$Res> get data;
}

/// @nodoc
class _$SeizureStoreResponseCopyWithImpl<$Res>
    implements $SeizureStoreResponseCopyWith<$Res> {
  _$SeizureStoreResponseCopyWithImpl(this._value, this._then);

  final SeizureStoreResponse _value;
  // ignore: unused_field
  final $Res Function(SeizureStoreResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SeizureModel,
    ));
  }

  @override
  $SeizureModelCopyWith<$Res> get data {
    return $SeizureModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_SeizureStoreResponseCopyWith<$Res>
    implements $SeizureStoreResponseCopyWith<$Res> {
  factory _$$_SeizureStoreResponseCopyWith(_$_SeizureStoreResponse value,
          $Res Function(_$_SeizureStoreResponse) then) =
      __$$_SeizureStoreResponseCopyWithImpl<$Res>;
  @override
  $Res call({SeizureModel data});

  @override
  $SeizureModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SeizureStoreResponseCopyWithImpl<$Res>
    extends _$SeizureStoreResponseCopyWithImpl<$Res>
    implements _$$_SeizureStoreResponseCopyWith<$Res> {
  __$$_SeizureStoreResponseCopyWithImpl(_$_SeizureStoreResponse _value,
      $Res Function(_$_SeizureStoreResponse) _then)
      : super(_value, (v) => _then(v as _$_SeizureStoreResponse));

  @override
  _$_SeizureStoreResponse get _value => super._value as _$_SeizureStoreResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_SeizureStoreResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SeizureModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeizureStoreResponse implements _SeizureStoreResponse {
  const _$_SeizureStoreResponse({required this.data});

  factory _$_SeizureStoreResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SeizureStoreResponseFromJson(json);

  @override
  final SeizureModel data;

  @override
  String toString() {
    return 'SeizureStoreResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeizureStoreResponse &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_SeizureStoreResponseCopyWith<_$_SeizureStoreResponse> get copyWith =>
      __$$_SeizureStoreResponseCopyWithImpl<_$_SeizureStoreResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeizureStoreResponseToJson(this);
  }
}

abstract class _SeizureStoreResponse implements SeizureStoreResponse {
  const factory _SeizureStoreResponse({required final SeizureModel data}) =
      _$_SeizureStoreResponse;

  factory _SeizureStoreResponse.fromJson(Map<String, dynamic> json) =
      _$_SeizureStoreResponse.fromJson;

  @override
  SeizureModel get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SeizureStoreResponseCopyWith<_$_SeizureStoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
