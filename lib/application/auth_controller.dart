import 'dart:async';
import 'package:get/get.dart';

import 'package:epilepsy/controllers/profile_controller.dart';
import 'package:epilepsy/services/auth_service.dart';
import 'package:epilepsy/utils/device_storage.dart';
import 'package:epilepsy/constants/routes.dart';

class AuthController extends GetxController {
  Timer? timer;
  static int timeOutDuration = 60;

  var phoneNumber = ''.obs;
  var confirmationCode = ''.obs;
  var codeTimeOut = timeOutDuration.obs;

  var isResendAvailable = false.obs;
  var isLoading = false.obs;
  var isResendCodeLoading = false.obs;
  var isLoginVerifyLoading = false.obs;

  void startInterval() {
    if (codeTimeOut() == 0) {
      isResendAvailable(false);
      codeTimeOut(timeOutDuration);
    }
    void handleInterval(_) {
      codeTimeOut--;
      if (codeTimeOut() == 0) {
        isResendAvailable(true);
        timer?.cancel();
      }
    }

    stopInterval();
    timer = Timer.periodic(const Duration(seconds: 1), handleInterval);
  }

  void stopInterval() {
    timer?.cancel();
  }

  Future<void> login() async {
    try {
      isLoading.toggle();
      String normalizedPhone = '998' + phoneNumber().replaceAll(" ", "");
      final data = await AuthService.login(
        phone: normalizedPhone,
      );
      Get.toNamed(ROUTES.LOGIN_CONFIRMATION, arguments: data.data.userId);
      startInterval();
    } catch (e) {
      Get.snackbar('Ошибка', e.toString());
      throw Exception(e);
    } finally {
      isLoading.toggle();
    }
  }

  Future<void> loginVerify() async {
    try {
      isLoginVerifyLoading.toggle();
      final payload = {'code': confirmationCode()};
      final data = await AuthService.loginVerify(
        userId: Get.arguments,
        payload: payload,
      );
      DeviceStorage.token = data.data.token;
      Get.put(ProfileController(), permanent: true);
      timer?.cancel();
      Get.offAllNamed(ROUTES.HOME);
    } catch (e) {
      Get.snackbar('Ошибка', e.toString());
      throw Exception(e);
    } finally {
      isLoginVerifyLoading.toggle();
      super.dispose();
    }
  }

  void resendCode() async {
    try {
      isLoginVerifyLoading.toggle();
      await AuthService.resendCode(userId: Get.arguments);
      startInterval();
    } catch (e) {
      Get.snackbar('Ошибка', e.toString());
    } finally {
      isLoginVerifyLoading.toggle();
    }
  }
}
