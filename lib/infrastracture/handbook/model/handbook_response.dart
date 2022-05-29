import 'package:epilepsy/infrastracture/handbook/model/handbook.dart';

class HandbookResponse {
  List<HandbookModel>? data;

  HandbookResponse({this.data});

  HandbookResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <HandbookModel>[];
      json['data'].forEach((v) {
        data?.add(HandbookModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
