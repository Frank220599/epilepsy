import 'package:epilepsy/config/config.dart';
import 'package:epilepsy/constants/routes.dart';
import 'package:epilepsy/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrugsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppButton(
      onTap: () => Get.toNamed(ROUTES.ADD_DRUG),
      label: 'add'.tr,
    );
  }
}
