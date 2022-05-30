// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seizure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeizureModel _$$_SeizureModelFromJson(Map<String, dynamic> json) =>
    _$_SeizureModel(
      id: json['id'] as int,
      date: json['date'] as String,
      duration: json['duration'] as String,
      type: json['type'] as String,
      reason: json['reason'] as String?,
      activity: json['activity'] as String,
      place: json['place'] as String,
      notice: json['notice'] as String?,
    );

Map<String, dynamic> _$$_SeizureModelToJson(_$_SeizureModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'duration': instance.duration,
      'type': instance.type,
      'reason': instance.reason,
      'activity': instance.activity,
      'place': instance.place,
      'notice': instance.notice,
    };
