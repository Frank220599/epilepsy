import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../domain/constants/routes.dart';
import '../../../widgets/app_button.dart';

class AddEEGButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppButton(
      onTap: () => Get.toNamed(ROUTES.ADD_EEG),
      label: 'add'.tr,
    );
  }
}
