import 'package:epilepsy/models/doctor.dart';
import 'package:epilepsy/models/links.dart';
import 'package:epilepsy/models/meta.dart';
import 'package:epilepsy/models/session.dart';

class SessionResponse {
  List<SessionModel> data;
  Links links;
  Meta meta;

  SessionResponse({this.data, this.links, this.meta});

  SessionResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <SessionModel>[];
      json['data'].forEach((v) {
        data.add(SessionModel.fromJson(v));
      });
    }
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    if (this.links != null) {
      data['links'] = this.links.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta.toJson();
    }
    return data;
  }
}
