import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../application/eeg_controller.dart';
import '../../../domain/config/icons.dart';
import '../../../domain/utils/sizes.dart';
import '../../widgets/custom_app_bar.dart';
import './widgets/body.dart';

class EEGScreen extends StatelessWidget {
  final eegController = Get.put(EegController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(GetSize.width, 100.0),
        child: CustomAppBar(
          onTap: () => Get.back(),
          hasAction: false,
          leading: AppIcons.back,
          title: 'eeg'.tr,
        ),
      ),
      body: Body(),
    );
  }
}
