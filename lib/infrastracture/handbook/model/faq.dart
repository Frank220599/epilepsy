import 'package:flutter/cupertino.dart';

class FAQModel {
  int? id;
  String? question;
  String? answer;

  FAQModel({
    @required this.id,
    @required this.question,
    @required this.answer,
  });

  FAQModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question'] = this.question;
    data['answer'] = this.answer;
    return data;
  }
}
