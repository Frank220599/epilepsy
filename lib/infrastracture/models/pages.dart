class AuthorsPageModel {
  String authorsPage;

  AuthorsPageModel({this.authorsPage});

  AuthorsPageModel.fromJson(Map<String, dynamic> json) {
    authorsPage = json['authors_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['authors_page'] = this.authorsPage;
    return data;
  }
}

class AboutPageModel {
  String aboutPage;

  AboutPageModel({this.aboutPage});

  AboutPageModel.fromJson(Map<String, dynamic> json) {
    aboutPage = json['about_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['about_page'] = this.aboutPage;
    return data;
  }
}
