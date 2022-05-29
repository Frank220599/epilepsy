import '../../doctors/models/doctor.dart';

class SessionModel {
  int? id;
  int? userId;
  int? doctorId;
  int? unreadCount;
  String? status;
  String? statusText;
  String? statusSessionStatusBackground;
  String? lastActiveAt;
  String? acceptedAt;
  String? rejectedAt;
  String? closedAt;
  String? canceledAt;
  String? createdAt;
  DoctorModel? user;
  DoctorModel? doctor;

  SessionModel({
    this.id,
    this.userId,
    this.doctorId,
    this.unreadCount,
    this.status,
    this.statusText,
    this.statusSessionStatusBackground,
    this.lastActiveAt,
    this.acceptedAt,
    this.rejectedAt,
    this.closedAt,
    this.canceledAt,
    this.createdAt,
    this.user,
    this.doctor,
  });

  SessionModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    doctorId = json['doctor_id'];
    unreadCount = json['unread_count'];
    status = json['status'];
    statusText = json['status_text'];
    statusSessionStatusBackground = json['status_session_status_background'];
    lastActiveAt = json['last_active_at'];
    acceptedAt = json['accepted_at'];
    rejectedAt = json['rejected_at'];
    closedAt = json['closed_at'];
    canceledAt = json['canceled_at'];
    createdAt = json['created_at'];
    user = json['user'] != null ? new DoctorModel.fromJson(json['user']) : null;
    doctor = json['doctor'] != null
        ? new DoctorModel.fromJson(json['doctor'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['doctor_id'] = this.doctorId;
    data['unread_count'] = this.unreadCount;
    data['status'] = this.status;
    data['status_text'] = this.statusText;
    data['status_session_status_background'] =
        this.statusSessionStatusBackground;
    data['last_active_at'] = this.lastActiveAt;
    data['accepted_at'] = this.acceptedAt;
    data['rejected_at'] = this.rejectedAt;
    data['closed_at'] = this.closedAt;
    data['canceled_at'] = this.canceledAt;
    data['created_at'] = this.createdAt;
    if (this.user != null) {
      data['user'] = this.user?.toJson();
    }
    if (this.doctor != null) {
      data['doctor'] = this.doctor?.toJson();
    }
    return data;
  }
}
