import 'links.dart';
import 'meta.dart';
import 'rate.dart';

class RatesResponse {
  List<RateModel>? data;
  Links? links;
  Meta? meta;

  RatesResponse({this.data, this.links, this.meta});

  RatesResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <RateModel>[];
      json['data'].forEach((v) {
        data!.add(RateModel.fromJson(v));
      });
    }
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}
