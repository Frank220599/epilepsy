import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../application/auth_controller.dart';
import '../../../../domain/constants/fonts.dart';

class ResendCodeButton extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();

  ResendCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (!_authController.isResendAvailable()) {
          return const SizedBox();
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'notReceivedCode'.tr,
              style: FontStyles.mediumStyle(
                fontSize: 14,
                color: const Color(0xffa8a8a8),
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                if (_authController.isResendCodeLoading()) {
                  return;
                }
                _authController.resendCode();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'resend'.tr,
                    style: FontStyles.mediumStyle(
                      color: const Color(0xffffaf2a),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  _authController.isResendCodeLoading()
                      ? const SizedBox(
                          width: 15,
                          height: 15,
                          child: CircularProgressIndicator(),
                        )
                      : SvgPicture.string(
                          '<svg viewBox="3.6 0.9 14.3 17.9" ><path transform="translate(-4.42, -1.1)" d="M 15.16666603088379 5.583333015441895 L 15.16666603088379 2 L 10.6875 6.479166507720947 L 15.16666603088379 10.95833301544189 L 15.16666603088379 7.374999523162842 C 18.13635444641113 7.374999523162842 20.54166603088379 9.780312538146973 20.54166603088379 12.75 C 20.54166603088379 15.71968841552734 18.13635444641113 18.12499809265137 15.16666603088379 18.12499809265137 C 12.19697856903076 18.12499809265137 9.791666030883789 15.71968841552734 9.791666030883789 12.75 L 8 12.75 C 8 16.7095832824707 11.20708274841309 19.91666603088379 15.16666603088379 19.91666603088379 C 19.12624931335449 19.91666603088379 22.33333206176758 16.7095832824707 22.33333206176758 12.75 C 22.33333206176758 8.790416717529297 19.12624931335449 5.583333015441895 15.16666603088379 5.583333015441895 Z" fill="#ffaf2a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
