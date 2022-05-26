import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../domain/constants/fonts.dart';

class TopText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, bottom: 11),
      child: Text(
        'enterReceivedCode'.tr,
        style: FontStyles.mediumStyle(
          fontSize: 14,
          color: const Color(0xff343434),
        ),
      ),
    );
  }
}
