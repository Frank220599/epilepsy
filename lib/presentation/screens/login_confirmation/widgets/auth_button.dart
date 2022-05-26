import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../application/auth_controller.dart';
import '../../../../domain/config/colors.dart';
import '../../../../domain/constants/fonts.dart';

class AuthButton extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isActive = _authController.confirmationCode.toString().length == 5;
      return GestureDetector(
        onTap: () {
          if (!_authController.isLoginVerifyLoading()) {
            _authController.loginVerify();
          }
        },
        child: Container(
          width: 204,
          height: 50,
          decoration: applyBoxDecorations(isActive),
          child: Center(
            child: _authController.isLoginVerifyLoading()
                ? _circularProgressIndicator()
                : Text(
                    'authorize'.tr,
                    style: FontStyles.mediumStyle(
                      fontSize: 16,
                      color: const Color(0xffffffff),
                    ),
                  ),
          ),
        ),
      );
    });
  }

  Widget _circularProgressIndicator() {
    return SizedBox(
      width: 20,
      height: 20,
      child: CircularProgressIndicator(
        color: Colors.white,
        strokeWidth: 2,
      ),
    );
  }

  BoxDecoration applyBoxDecorations(bool isActive) {
    return isActive
        ? BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: Palette.purple,
            boxShadow: [
              BoxShadow(
                color: Palette.purple.withOpacity(.7),
                offset: Offset(0, 3),
                blurRadius: 15,
              ),
            ],
          )
        : BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: const Color(0xffeaeaea),
            boxShadow: [
              BoxShadow(
                color: const Color(0x15000000),
                offset: Offset(0, 5),
                blurRadius: 8,
              ),
            ],
          );
  }
}
