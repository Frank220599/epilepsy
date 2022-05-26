import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../application/drug_controller.dart';
import '../../../domain/config/icons.dart';
import '../../../domain/utils/sizes.dart';
import '../../widgets/custom_app_bar.dart';
import '../add_eeg/widgets/body.dart';

class DrugsScreen extends StatelessWidget {
  final drugController = Get.put(DrugController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(GetSize.width, 100.0),
        child: CustomAppBar(
          onTap: () => Get.back(),
          hasAction: false,
          leading: AppIcons.back,
          title: 'drugs'.tr,
        ),
      ),
      body: Body(),
    );
  }
}
