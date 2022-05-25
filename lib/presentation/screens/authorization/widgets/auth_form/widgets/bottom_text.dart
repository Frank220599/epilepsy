import 'package:epilepsy/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'authCode'.tr,
      style: FontStyles.mediumStyle(
        fontSize: 12,
        color: const Color(0xff343434),
      ),
      textAlign: TextAlign.center,
    );
  }
}
