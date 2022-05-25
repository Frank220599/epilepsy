import 'package:epilepsy/constants/api.dart';
import 'package:epilepsy/models/message.dart';
import 'package:epilepsy/models/session.dart';
import 'package:epilepsy/types/messages_response.dart';
import 'package:epilepsy/types/session_response.dart';
import 'package:get/get.dart';

import 'api_service.dart';

class SessionService {
  static final _dio = ApiService.dio;

  static Future<SessionModel> createSession(payload) async {
    try {
      final data = await _dio.post(Api.createSession, data: payload);
      return SessionModel.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<SessionResponse> getSessions() async {
    try {
      final data = await _dio.get(Api.session);
      return SessionResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<SessionModel> changeSessionStatus({
    required int id,
    required String status,
  }) async {
    try {
      final data = await _dio.post(
        Api.sessionStatusUpdate(id),
        data: {
          'status': status,
        },
      );
      return SessionModel.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<MessagesResponse> getSessionMessages() async {
    try {
      final data = await _dio.get(Api.sessionMessages(Get.arguments));
      return MessagesResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<MessageModel> sendMessage(message) async {
    try {
      final data = await _dio.post(
        Api.sessionMessages(Get.arguments),
        data: {'message': message},
      );
      return MessageModel.fromJson(data.data['data']);
    } catch (e) {
      throw Exception(e);
    }
  }
}
