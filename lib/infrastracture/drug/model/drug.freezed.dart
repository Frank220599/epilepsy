// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drug.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DrugModel _$DrugModelFromJson(Map<String, dynamic> json) {
  return _DrugModel.fromJson(json);
}

/// @nodoc
mixin _$DrugModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get dosage => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_start')
  String? get dateStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_end')
  String? get dateEnd => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrugModelCopyWith<DrugModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrugModelCopyWith<$Res> {
  factory $DrugModelCopyWith(DrugModel value, $Res Function(DrugModel) then) =
      _$DrugModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String? dosage,
      @JsonKey(name: 'date_start') String? dateStart,
      @JsonKey(name: 'date_end') String? dateEnd,
      String? image,
      String? comment});
}

/// @nodoc
class _$DrugModelCopyWithImpl<$Res> implements $DrugModelCopyWith<$Res> {
  _$DrugModelCopyWithImpl(this._value, this._then);

  final DrugModel _value;
  // ignore: unused_field
  final $Res Function(DrugModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? dosage = freezed,
    Object? dateStart = freezed,
    Object? dateEnd = freezed,
    Object? image = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dosage: dosage == freezed
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String?,
      dateStart: dateStart == freezed
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as String?,
      dateEnd: dateEnd == freezed
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DrugModelCopyWith<$Res> implements $DrugModelCopyWith<$Res> {
  factory _$$_DrugModelCopyWith(
          _$_DrugModel value, $Res Function(_$_DrugModel) then) =
      __$$_DrugModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String? dosage,
      @JsonKey(name: 'date_start') String? dateStart,
      @JsonKey(name: 'date_end') String? dateEnd,
      String? image,
      String? comment});
}

/// @nodoc
class __$$_DrugModelCopyWithImpl<$Res> extends _$DrugModelCopyWithImpl<$Res>
    implements _$$_DrugModelCopyWith<$Res> {
  __$$_DrugModelCopyWithImpl(
      _$_DrugModel _value, $Res Function(_$_DrugModel) _then)
      : super(_value, (v) => _then(v as _$_DrugModel));

  @override
  _$_DrugModel get _value => super._value as _$_DrugModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? dosage = freezed,
    Object? dateStart = freezed,
    Object? dateEnd = freezed,
    Object? image = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$_DrugModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dosage: dosage == freezed
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String?,
      dateStart: dateStart == freezed
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as String?,
      dateEnd: dateEnd == freezed
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DrugModel implements _DrugModel {
  _$_DrugModel(
      {required this.id,
      required this.title,
      this.dosage,
      @JsonKey(name: 'date_start') this.dateStart,
      @JsonKey(name: 'date_end') this.dateEnd,
      this.image,
      this.comment});

  factory _$_DrugModel.fromJson(Map<String, dynamic> json) =>
      _$$_DrugModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? dosage;
  @override
  @JsonKey(name: 'date_start')
  final String? dateStart;
  @override
  @JsonKey(name: 'date_end')
  final String? dateEnd;
  @override
  final String? image;
  @override
  final String? comment;

  @override
  String toString() {
    return 'DrugModel(id: $id, title: $title, dosage: $dosage, dateStart: $dateStart, dateEnd: $dateEnd, image: $image, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrugModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.dosage, dosage) &&
            const DeepCollectionEquality().equals(other.dateStart, dateStart) &&
            const DeepCollectionEquality().equals(other.dateEnd, dateEnd) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.comment, comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(dosage),
      const DeepCollectionEquality().hash(dateStart),
      const DeepCollectionEquality().hash(dateEnd),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(comment));

  @JsonKey(ignore: true)
  @override
  _$$_DrugModelCopyWith<_$_DrugModel> get copyWith =>
      __$$_DrugModelCopyWithImpl<_$_DrugModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DrugModelToJson(this);
  }
}

abstract class _DrugModel implements DrugModel {
  factory _DrugModel(
      {required final int id,
      required final String title,
      final String? dosage,
      @JsonKey(name: 'date_start') final String? dateStart,
      @JsonKey(name: 'date_end') final String? dateEnd,
      final String? image,
      final String? comment}) = _$_DrugModel;

  factory _DrugModel.fromJson(Map<String, dynamic> json) =
      _$_DrugModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String? get dosage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date_start')
  String? get dateStart => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date_end')
  String? get dateEnd => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get comment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DrugModelCopyWith<_$_DrugModel> get copyWith =>
      throw _privateConstructorUsedError;
}
