class LoginResponse {
  LoginResponseData? data;

  LoginResponse({this.data});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null
        ? LoginResponseData.fromJson(json['data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class LoginResponseData {
  int userId;
  String code;

  LoginResponseData({required this.userId, required this.code});


  factory LoginResponseData.fromJson(Map<String, dynamic> map) {
    return LoginResponseData(
      userId: map['userId'] as int,
      code: map['code'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['code'] = code;
    return data;
  }



}
