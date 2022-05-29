class User {
  String name;
  String avatar;
  String birthday;
  String gender;
  Null experience;
  Null visitingPrice;
  Null regalia;

  User({
    this.name,
    this.avatar,
    this.birthday,
    this.gender,
    this.experience,
    this.visitingPrice,
    this.regalia,
  });

  User.fromJson(Map<String, dynamic> json) {
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
