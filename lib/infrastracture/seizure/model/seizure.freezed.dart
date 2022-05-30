// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seizure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeizureModel _$SeizureModelFromJson(Map<String, dynamic> json) {
  return _SeizureModel.fromJson(json);
}

/// @nodoc
mixin _$SeizureModel {
  int get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String get activity => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;
  String? get notice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeizureModelCopyWith<SeizureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeizureModelCopyWith<$Res> {
  factory $SeizureModelCopyWith(
          SeizureModel value, $Res Function(SeizureModel) then) =
      _$SeizureModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String date,
      String duration,
      String type,
      String? reason,
      String activity,
      String place,
      String? notice});
}

/// @nodoc
class _$SeizureModelCopyWithImpl<$Res> implements $SeizureModelCopyWith<$Res> {
  _$SeizureModelCopyWithImpl(this._value, this._then);

  final SeizureModel _value;
  // ignore: unused_field
  final $Res Function(SeizureModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? duration = freezed,
    Object? type = freezed,
    Object? reason = freezed,
    Object? activity = freezed,
    Object? place = freezed,
    Object? notice = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      notice: notice == freezed
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SeizureModelCopyWith<$Res>
    implements $SeizureModelCopyWith<$Res> {
  factory _$$_SeizureModelCopyWith(
          _$_SeizureModel value, $Res Function(_$_SeizureModel) then) =
      __$$_SeizureModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String date,
      String duration,
      String type,
      String? reason,
      String activity,
      String place,
      String? notice});
}

/// @nodoc
class __$$_SeizureModelCopyWithImpl<$Res>
    extends _$SeizureModelCopyWithImpl<$Res>
    implements _$$_SeizureModelCopyWith<$Res> {
  __$$_SeizureModelCopyWithImpl(
      _$_SeizureModel _value, $Res Function(_$_SeizureModel) _then)
      : super(_value, (v) => _then(v as _$_SeizureModel));

  @override
  _$_SeizureModel get _value => super._value as _$_SeizureModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? duration = freezed,
    Object? type = freezed,
    Object? reason = freezed,
    Object? activity = freezed,
    Object? place = freezed,
    Object? notice = freezed,
  }) {
    return _then(_$_SeizureModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      notice: notice == freezed
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeizureModel implements _SeizureModel {
  const _$_SeizureModel(
      {required this.id,
      required this.date,
      required this.duration,
      required this.type,
      this.reason,
      required this.activity,
      required this.place,
      this.notice});

  factory _$_SeizureModel.fromJson(Map<String, dynamic> json) =>
      _$$_SeizureModelFromJson(json);

  @override
  final int id;
  @override
  final String date;
  @override
  final String duration;
  @override
  final String type;
  @override
  final String? reason;
  @override
  final String activity;
  @override
  final String place;
  @override
  final String? notice;

  @override
  String toString() {
    return 'SeizureModel(id: $id, date: $date, duration: $duration, type: $type, reason: $reason, activity: $activity, place: $place, notice: $notice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeizureModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.reason, reason) &&
            const DeepCollectionEquality().equals(other.activity, activity) &&
            const DeepCollectionEquality().equals(other.place, place) &&
            const DeepCollectionEquality().equals(other.notice, notice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(reason),
      const DeepCollectionEquality().hash(activity),
      const DeepCollectionEquality().hash(place),
      const DeepCollectionEquality().hash(notice));

  @JsonKey(ignore: true)
  @override
  _$$_SeizureModelCopyWith<_$_SeizureModel> get copyWith =>
      __$$_SeizureModelCopyWithImpl<_$_SeizureModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeizureModelToJson(this);
  }
}

abstract class _SeizureModel implements SeizureModel {
  const factory _SeizureModel(
      {required final int id,
      required final String date,
      required final String duration,
      required final String type,
      final String? reason,
      required final String activity,
      required final String place,
      final String? notice}) = _$_SeizureModel;

  factory _SeizureModel.fromJson(Map<String, dynamic> json) =
      _$_SeizureModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  String get duration => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String? get reason => throw _privateConstructorUsedError;
  @override
  String get activity => throw _privateConstructorUsedError;
  @override
  String get place => throw _privateConstructorUsedError;
  @override
  String? get notice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SeizureModelCopyWith<_$_SeizureModel> get copyWith =>
      throw _privateConstructorUsedError;
}
