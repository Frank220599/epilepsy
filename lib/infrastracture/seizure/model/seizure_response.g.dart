// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seizure_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeizureResponse _$$_SeizureResponseFromJson(Map<String, dynamic> json) =>
    _$_SeizureResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => SeizureModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SeizureResponseToJson(_$_SeizureResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_SeizureStoreResponse _$$_SeizureStoreResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SeizureStoreResponse(
      data: SeizureModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SeizureStoreResponseToJson(
        _$_SeizureStoreResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
