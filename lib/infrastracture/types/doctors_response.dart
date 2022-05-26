import 'package:epilepsy/infrastracture/models/doctor.dart';
import 'package:epilepsy/infrastracture/models/links.dart';
import 'package:epilepsy/infrastracture/models/meta.dart';

class DoctorsResponse {
  List<DoctorModel>? data;
  Links? links;
  Meta? meta;

  DoctorsResponse({
    this.data,
    this.links,
    this.meta,
  });

  DoctorsResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DoctorModel>[];
      json['data'].forEach((v) {
        data!.add(DoctorModel.fromJson(v));
      });
    }
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (links != null) {
      data['links'] = links!.toJson();
    }
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    return data;
  }
}
