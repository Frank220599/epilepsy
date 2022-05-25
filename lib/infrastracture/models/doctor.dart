class DoctorModel {
  int id;
  String phone;
  DoctorProfile profile;

  DoctorModel({this.id, this.phone, this.profile});

  DoctorModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    phone = json['phone'];
    profile = json['profile'] != null
        ? new DoctorProfile.fromJson(json['profile'])
        : null;
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

class DoctorProfile {
  String name;
  String avatar;
  String birthday;
  String gender;
  String experience;
  String visitingPrice;
  Null regalia;

  DoctorProfile({
    this.name,
    this.avatar,
    this.birthday,
    this.gender,
    this.experience,
    this.visitingPrice,
    this.regalia,
  });

  DoctorProfile.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    avatar = json['avatar'];
    birthday = json['birthday'];
    gender = json['gender'];
    experience = json['experience'];
    visitingPrice = json['visiting_price'];
    regalia = json['regalia'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['avatar'] = this.avatar;
    data['birthday'] = this.birthday;
    data['gender'] = this.gender;
    data['experience'] = this.experience;
    data['visiting_price'] = this.visitingPrice;
    data['regalia'] = this.regalia;
    return data;
  }
}
