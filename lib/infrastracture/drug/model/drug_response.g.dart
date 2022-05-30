// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drug_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DrugResponse _$$_DrugResponseFromJson(Map<String, dynamic> json) =>
    _$_DrugResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => DrugModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DrugResponseToJson(_$_DrugResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

_$_DrugStoreResponse _$$_DrugStoreResponseFromJson(Map<String, dynamic> json) =>
    _$_DrugStoreResponse(
      data: json['data'] == null
          ? null
          : DrugModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DrugStoreResponseToJson(
        _$_DrugStoreResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
