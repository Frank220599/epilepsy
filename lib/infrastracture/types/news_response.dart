import 'package:epilepsy/infrastracture/models/links.dart';
import 'package:epilepsy/infrastracture/models/meta.dart';
import '../models/news.dart';

class NewsResponse {
  List<News> data;
  Links links;
  Meta meta;

  NewsResponse({this.data, this.links, this.meta});

  NewsResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <News>[];
      json['data'].forEach((v) {
        data.add(new News.fromJson(v));
      });
    }
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    if (this.links != null) {
      data['links'] = this.links.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta.toJson();
    }
    return data;
  }
}
