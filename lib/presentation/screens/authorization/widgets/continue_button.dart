import 'package:epilepsy/config/colors.dart';
import 'package:epilepsy/constants/fonts.dart';
import 'package:epilepsy/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContinueButton extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool isActive = _authController.phoneNumber().length == 12;
      return GestureDetector(
        onTap: () {
          if (isActive && !_authController.isLoading()) {
            _authController.login();
          }
        },
        child: Container(
          width: 201.0,
          height: 50.0,
          margin: EdgeInsets.only(bottom: 43),
          decoration: applyBoxDecorations(isActive),
          child: Center(
            child: _authController.isLoading()
                ? _circularProgressIndicator()
                : Text(
                    'continue'.tr,
                    style: FontStyles.mediumStyle(
                      fontSize: 16,
                      color: isActive ? Colors.white : const Color(0xffa7a7a7),
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
