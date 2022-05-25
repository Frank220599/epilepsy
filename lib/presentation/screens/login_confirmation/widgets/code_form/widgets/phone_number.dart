import 'package:epilepsy/constants/fonts.dart';
import 'package:epilepsy/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneNumber extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Text(
      '(+998) ${_authController.phoneNumber}',
      style: FontStyles.boldStyle(
        fontSize: 14,
        color: const Color(0xff464950),
      ),
    );
  }
}
