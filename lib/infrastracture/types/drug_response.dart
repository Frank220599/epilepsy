import 'package:epilepsy/models/drug.dart';
import 'package:epilepsy/models/links.dart';
import 'package:epilepsy/models/meta.dart';

class DrugResponse {
  List<DrugModel>? data;
  Links? links;
  Meta? meta;

  DrugResponse({this.data, this.links, this.meta});

  DrugResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DrugModel>[];
      json['data'].forEach((v) {
        data!.add(DrugModel.fromJson(v));
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

class DrugStoreResponse {
  DrugModel? data;

  DrugStoreResponse({this.data});

  DrugStoreResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? DrugModel.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}
