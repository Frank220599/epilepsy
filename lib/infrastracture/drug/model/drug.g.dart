// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drug.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DrugModel _$$_DrugModelFromJson(Map<String, dynamic> json) => _$_DrugModel(
      id: json['id'] as int,
      title: json['title'] as String,
      dosage: json['dosage'] as String?,
      dateStart: json['date_start'] as String?,
      dateEnd: json['date_end'] as String?,
      image: json['image'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$_DrugModelToJson(_$_DrugModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'dosage': instance.dosage,
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
      'image': instance.image,
      'comment': instance.comment,
    };
