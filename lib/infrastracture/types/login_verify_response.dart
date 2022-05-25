class LoginVerifyResponse {
  LoginVerifyResponseData? data;

  LoginVerifyResponse({this.data});

  LoginVerifyResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null
        ? LoginVerifyResponseData.fromJson(json['data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class LoginVerifyResponseData {
  int id;
  int userId;
  String token;
  String deviceInfo;
  String loggedAt;
  String lastSeenAt;

  LoginVerifyResponseData({
    this.id,
    this.userId,
    this.token,
    this.deviceInfo,
    this.loggedAt,
    this.lastSeenAt,
  });

  LoginVerifyResponseData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    token = json['token'];
    deviceInfo = json['device_info'];
    loggedAt = json['logged_at'];
    lastSeenAt = json['last_seen_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['token'] = this.token;
    data['device_info'] = this.deviceInfo;
    data['logged_at'] = this.loggedAt;
    data['last_seen_at'] = this.lastSeenAt;
    return data;
  }
}
