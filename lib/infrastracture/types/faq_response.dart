import 'package:epilepsy/models/faq.dart';

class FAQResponse {
  List<FAQModel>? data;

  FAQResponse({this.data});

  FAQResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <FAQModel>[];
      json['data'].forEach((v) {
        data?.add(FAQModel.fromJson(v));
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
