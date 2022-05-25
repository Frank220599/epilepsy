import 'package:epilepsy/constants/fonts.dart';
import 'package:epilepsy/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResendCode extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Text.rich(
        TextSpan(
          style: TextStyle(
            fontFamily: 'Avenir-Heavy',
            fontSize: 14,
            color: const Color(0xffa8a8a8),
          ),
          children: [
            TextSpan(
              text: 'requireAfter'.tr,
            ),
            TextSpan(
              text: _printDuration(
                Duration(
                  seconds: _authController.codeTimeOut(),
                ),
              ),
              style: FontStyles.mediumStyle(
                color: const Color(0xff012d48),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      );
    });
  }
}
