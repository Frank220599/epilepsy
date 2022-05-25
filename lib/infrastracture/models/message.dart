import 'doctor.dart';

class MessageModel {
  int id;
  int userId;
  String message;
  Null file;
  String createdAt;
  DoctorModel user;

  MessageModel({
    this.id,
    this.userId,
    this.message,
    this.file,
    this.createdAt,
    this.user,
  });

  MessageModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    message = json['message'];
    file = json['file'];
    createdAt = json['created_at'];
    user = json['user'] != null ? new DoctorModel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['message'] = this.message;
    data['file'] = this.file;
    data['created_at'] = this.createdAt;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}
