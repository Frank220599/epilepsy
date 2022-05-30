import 'package:epilepsy/infrastracture/session/models/session.dart';

import '../../handbook/model/links.dart';
import '../../handbook/model/meta.dart';

import 'package:epilepsy/infrastracture/handbook/model/links.dart';
import 'package:epilepsy/infrastracture/handbook/model/meta.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_response.freezed.dart';
part 'session_response.g.dart';

@freezed
class SessionResponse with _$SessionResponse {
  const factory SessionResponse({
    List<SessionModel>? data,
    required Links links,
    required Meta meta,
  }) = _SessionResponse;

  factory SessionResponse.fromJson(Map<String, dynamic> json) =>
      _$SessionResponseFromJson(json);
}
