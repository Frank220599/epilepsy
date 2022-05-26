import 'package:epilepsy/infrastracture/models/message.dart';

class MessagesResponse {
  List<MessageModel> data;

  MessagesResponse({this.data});

  MessagesResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <MessageModel>[];
      json['data'].forEach((v) {
        data.add(new MessageModel.fromJson(v));
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
