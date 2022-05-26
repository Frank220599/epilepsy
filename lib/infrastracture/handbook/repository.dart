import 'package:epilepsy/domain/api_service.dart';
import 'package:epilepsy/domain/constants/api.dart';
import 'package:epilepsy/infrastracture/models/contacts.dart';

import '../models/pages.dart';
import '../types/faq_response.dart';
import '../types/handbook_response.dart';
import '../types/news_response.dart';

class HandbookRepository {
  static final _dio = ApiService.dio;

  static Future<HandbookResponse> getSeizureTypes() async {
    try {
      final data = await _dio.get(Api.seizureTypes);
      return HandbookResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<HandbookResponse> getSeizureReasons() async {
    try {
      final data = await _dio.get(Api.seizureReasons);
      return HandbookResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<HandbookResponse> getSeizurePlaces() async {
    try {
      final data = await _dio.get(Api.seizurePlaces);
      return HandbookResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<HandbookResponse> getSeizureActivities() async {
    try {
      final data = await _dio.get(Api.seizureActivities);
      return HandbookResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<FAQResponse> getFAQ() async {
    try {
      final data = await _dio.get(Api.faq);
      return FAQResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<NewsResponse> getNews() async {
    try {
      final data = await _dio.get(Api.news);
      return NewsResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<ContactsModel> getContacts() async {
    try {
      final data = await _dio.get(Api.contacts);
      return ContactsModel.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<AuthorsPageModel> getAuthorsPage() async {
    try {
      final data = await _dio.get(Api.authorsPage);
      return AuthorsPageModel.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<AboutPageModel> getAboutPage() async {
    try {
      final data = await _dio.get(Api.aboutPage);
      return AboutPageModel.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
