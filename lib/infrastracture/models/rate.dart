class Autogenerated {
  List<RateModel> data;

  Autogenerated({this.data});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <RateModel>[];
      json['data'].forEach((v) {
        data.add(new RateModel.fromJson(v));
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

class RateModel {
  int id;
  String title;
  int price;
  String paymentType;
  String createdAt;
  int limitRemained;
  String expiredAt;

  RateModel({
    this.id,
    this.title,
    this.price,
    this.paymentType,
    this.createdAt,
    this.limitRemained,
    this.expiredAt,
  });

  RateModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    paymentType = json['payment_type'];
    createdAt = json['created_at'];
    limitRemained = json['limit_remained'];
    expiredAt = json['expired_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['payment_type'] = this.paymentType;
    data['created_at'] = this.createdAt;
    data['limit_remained'] = this.limitRemained;
    data['expired_at'] = this.expiredAt;
    return data;
  }
}
