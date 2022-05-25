import 'package:epilepsy/models/tendencies.dart';

class TendenciesResponse {
  TendenciesModel data;

  TendenciesResponse({this.data});

  TendenciesResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null
        ? new TendenciesModel.fromJson(json['data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}
