import 'package:epilepsy/infrastracture/models/eeg.dart';
import 'package:epilepsy/infrastracture/models/links.dart';
import 'package:epilepsy/infrastracture/models/meta.dart';

class EegResponse {
  List<EegModel>? data;
  Links? links;
  Meta? meta;

  EegResponse({this.data, this.links, this.meta});

  EegResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <EegModel>[];
      json['data'].forEach((v) {
        data!.add(EegModel.fromJson(v));
      });
    }
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    if (links != null) {
      data['links'] = links?.toJson();
    }
    if (meta != null) {
      data['meta'] = meta?.toJson();
    }
    return data;
  }
}

class EegStoreResponse {
  EegModel? data;

  EegStoreResponse({this.data});

  EegStoreResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? EegModel.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}
