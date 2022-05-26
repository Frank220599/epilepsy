class ProfileResponse {
  ProfileData data;

  ProfileResponse({this.data});

  ProfileResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new ProfileData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class ProfileData {
  int id;
  String phone;
  User profile;

  ProfileData({this.id, this.phone, this.profile});

  ProfileData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    phone = json['phone'];
    profile =
        json['profile'] != null ? new User.fromJson(json['profile']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['phone'] = this.phone;
    if (this.profile != null) {
      data['profile'] = this.profile.toJson();
    }
    return data;
  }
}
