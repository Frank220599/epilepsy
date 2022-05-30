import 'package:epilepsy/infrastracture/drug/model/drug.dart';
import 'package:epilepsy/infrastracture/handbook/model/links.dart';
import 'package:epilepsy/infrastracture/handbook/model/meta.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'drug_response.freezed.dart';
part 'drug_response.g.dart';

@freezed
class DrugResponse with _$DrugResponse {
  const factory DrugResponse({
    required List<DrugModel> data,
    required Links links,
    required Meta meta,
  }) = _DrugResponse;

  factory DrugResponse.fromJson(Map<String, dynamic> json) =>
      _$DrugResponseFromJson(json);
}

@freezed
class DrugStoreResponse with _$DrugStoreResponse {
  const factory DrugStoreResponse({
    DrugModel? data,
  }) = _DrugStoreResponse;

  factory DrugStoreResponse.fromJson(Map<String, dynamic> json) =>
      _$DrugStoreResponseFromJson(json);
}
