import 'package:epilepsy/models/seizure.dart';

class SeizureResponse {
  List<SeizureModel> data;

  SeizureResponse({this.data});

  SeizureResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <SeizureModel>[];
      json['data'].forEach((v) {
        data.add(SeizureModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SeizureStoreResponse {
  SeizureModel data;

  SeizureStoreResponse({this.data});

  SeizureStoreResponse.fromJson(Map<String, dynamic> json) {
    data =
        json['data'] != null ? new SeizureModel.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}
