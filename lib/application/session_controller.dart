import 'package:epilepsy/constants/routes.dart';
import 'package:epilepsy/models/message.dart';
import 'package:epilepsy/models/session.dart';
import 'package:epilepsy/services/session_service.dart';
import 'package:get/get.dart';

class SessionsController extends GetxController {
  var isSessionsLoading = false.obs;
  var sessions = <SessionModel>[].obs;
  var isSessionsError = false.obs;

  var isMessagesLoading = false.obs;
  var messages = <MessageModel>[].obs;
  var isMessagesError = false.obs;

  var isSendMessagesLoading = false.obs;
  var isSendMessagesError = false.obs;
  var message = '';

  var isCreateSessionLoading = false.obs;
  var isChangeStatusLoading = false.obs;

  Future<void> getSessions() async {
    try {
      isSessionsLoading(true);
      isSessionsError(false);
      var data = await SessionService.getSessions();
      sessions(data.data);
    } catch (e) {
      isSessionsError(true);
      throw Exception(e);
    } finally {
      isSessionsLoading(false);
    }
  }

  Future<void> createSessions(payload) async {
    try {
      isCreateSessionLoading(true);
      var data = await SessionService.createSession(payload);
      sessions.add(data);
      Get.offAndToNamed(ROUTES.SESSIONS);
    } catch (e) {
      throw Exception(e);
    } finally {
      isCreateSessionLoading(false);
    }
  }

  Future<void> changeSessionStatus({
    required int id,
    required String status,
  }) async {
    try {
      isChangeStatusLoading(true);
      var data = await SessionService.changeSessionStatus(
        id: id,
        status: status,
      );
      getSessions();
      Get.back();
    } catch (e) {
      throw Exception(e);
    } finally {
      isChangeStatusLoading(false);
    }
  }

  Future<void> getSessionsMessages() async {
    try {
      isMessagesLoading(true);
      isMessagesError(false);
      var data = await SessionService.getSessionMessages();
      messages(data.data);
    } catch (e) {
      isMessagesError(true);
      throw Exception(e);
    } finally {
      isMessagesLoading(false);
    }
  }

  Future<void> sendMessage() async {
    try {
      isSendMessagesLoading(true);
      isSendMessagesError(false);
      var data = await SessionService.sendMessage(message);
      messages.add(data);
      message = '';
    } catch (e) {
      isSendMessagesError(true);
      throw Exception(e);
    } finally {
      isSendMessagesLoading(false);
    }
  }
}
