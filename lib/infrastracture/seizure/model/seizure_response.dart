import 'package:epilepsy/infrastracture/seizure/model/seizure.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'seizure_response.freezed.dart';
part 'seizure_response.g.dart';

@freezed
class SeizureResponse with _$SeizureResponse {
  const factory SeizureResponse({
    required List<SeizureModel> data,
    // required Links links,
    // required Meta meta,
  }) = _SeizureResponse;

  factory SeizureResponse.fromJson(Map<String, dynamic> json) =>
      _$SeizureResponseFromJson(json);
}

@freezed
class SeizureStoreResponse with _$SeizureStoreResponse {
  const factory SeizureStoreResponse({
    required SeizureModel data,
  }) = _SeizureStoreResponse;

  factory SeizureStoreResponse.fromJson(Map<String, dynamic> json) =>
      _$SeizureStoreResponseFromJson(json);
}
