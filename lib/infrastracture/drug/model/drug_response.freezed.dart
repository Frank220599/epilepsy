// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drug_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DrugResponse _$DrugResponseFromJson(Map<String, dynamic> json) {
  return _DrugResponse.fromJson(json);
}

/// @nodoc
mixin _$DrugResponse {
  List<DrugModel> get data => throw _privateConstructorUsedError;
  Links get links => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrugResponseCopyWith<DrugResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrugResponseCopyWith<$Res> {
  factory $DrugResponseCopyWith(
          DrugResponse value, $Res Function(DrugResponse) then) =
      _$DrugResponseCopyWithImpl<$Res>;
  $Res call({List<DrugModel> data, Links links, Meta meta});
}

/// @nodoc
class _$DrugResponseCopyWithImpl<$Res> implements $DrugResponseCopyWith<$Res> {
  _$DrugResponseCopyWithImpl(this._value, this._then);

  final DrugResponse _value;
  // ignore: unused_field
  final $Res Function(DrugResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DrugModel>,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
abstract class _$$_DrugResponseCopyWith<$Res>
    implements $DrugResponseCopyWith<$Res> {
  factory _$$_DrugResponseCopyWith(
          _$_DrugResponse value, $Res Function(_$_DrugResponse) then) =
      __$$_DrugResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<DrugModel> data, Links links, Meta meta});
}

/// @nodoc
class __$$_DrugResponseCopyWithImpl<$Res>
    extends _$DrugResponseCopyWithImpl<$Res>
    implements _$$_DrugResponseCopyWith<$Res> {
  __$$_DrugResponseCopyWithImpl(
      _$_DrugResponse _value, $Res Function(_$_DrugResponse) _then)
      : super(_value, (v) => _then(v as _$_DrugResponse));

  @override
  _$_DrugResponse get _value => super._value as _$_DrugResponse;

  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_DrugResponse(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DrugModel>,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DrugResponse implements _DrugResponse {
  const _$_DrugResponse(
      {required final List<DrugModel> data,
      required this.links,
      required this.meta})
      : _data = data;

  factory _$_DrugResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DrugResponseFromJson(json);

  final List<DrugModel> _data;
  @override
  List<DrugModel> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Links links;
  @override
  final Meta meta;

  @override
  String toString() {
    return 'DrugResponse(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrugResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.links, links) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(links),
      const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  _$$_DrugResponseCopyWith<_$_DrugResponse> get copyWith =>
      __$$_DrugResponseCopyWithImpl<_$_DrugResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DrugResponseToJson(this);
  }
}

abstract class _DrugResponse implements DrugResponse {
  const factory _DrugResponse(
      {required final List<DrugModel> data,
      required final Links links,
      required final Meta meta}) = _$_DrugResponse;

  factory _DrugResponse.fromJson(Map<String, dynamic> json) =
      _$_DrugResponse.fromJson;

  @override
  List<DrugModel> get data => throw _privateConstructorUsedError;
  @override
  Links get links => throw _privateConstructorUsedError;
  @override
  Meta get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DrugResponseCopyWith<_$_DrugResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DrugStoreResponse _$DrugStoreResponseFromJson(Map<String, dynamic> json) {
  return _DrugStoreResponse.fromJson(json);
}

/// @nodoc
mixin _$DrugStoreResponse {
  DrugModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrugStoreResponseCopyWith<DrugStoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrugStoreResponseCopyWith<$Res> {
  factory $DrugStoreResponseCopyWith(
          DrugStoreResponse value, $Res Function(DrugStoreResponse) then) =
      _$DrugStoreResponseCopyWithImpl<$Res>;
  $Res call({DrugModel? data});

  $DrugModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$DrugStoreResponseCopyWithImpl<$Res>
    implements $DrugStoreResponseCopyWith<$Res> {
  _$DrugStoreResponseCopyWithImpl(this._value, this._then);

  final DrugStoreResponse _value;
  // ignore: unused_field
  final $Res Function(DrugStoreResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DrugModel?,
    ));
  }

  @override
  $DrugModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DrugModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_DrugStoreResponseCopyWith<$Res>
    implements $DrugStoreResponseCopyWith<$Res> {
  factory _$$_DrugStoreResponseCopyWith(_$_DrugStoreResponse value,
          $Res Function(_$_DrugStoreResponse) then) =
      __$$_DrugStoreResponseCopyWithImpl<$Res>;
  @override
  $Res call({DrugModel? data});

  @override
  $DrugModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_DrugStoreResponseCopyWithImpl<$Res>
    extends _$DrugStoreResponseCopyWithImpl<$Res>
    implements _$$_DrugStoreResponseCopyWith<$Res> {
  __$$_DrugStoreResponseCopyWithImpl(
      _$_DrugStoreResponse _value, $Res Function(_$_DrugStoreResponse) _then)
      : super(_value, (v) => _then(v as _$_DrugStoreResponse));

  @override
  _$_DrugStoreResponse get _value => super._value as _$_DrugStoreResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_DrugStoreResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DrugModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DrugStoreResponse implements _DrugStoreResponse {
  const _$_DrugStoreResponse({this.data});

  factory _$_DrugStoreResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DrugStoreResponseFromJson(json);

  @override
  final DrugModel? data;

  @override
  String toString() {
    return 'DrugStoreResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrugStoreResponse &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_DrugStoreResponseCopyWith<_$_DrugStoreResponse> get copyWith =>
      __$$_DrugStoreResponseCopyWithImpl<_$_DrugStoreResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DrugStoreResponseToJson(this);
  }
}

abstract class _DrugStoreResponse implements DrugStoreResponse {
  const factory _DrugStoreResponse({final DrugModel? data}) =
      _$_DrugStoreResponse;

  factory _DrugStoreResponse.fromJson(Map<String, dynamic> json) =
      _$_DrugStoreResponse.fromJson;

  @override
  DrugModel? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DrugStoreResponseCopyWith<_$_DrugStoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
