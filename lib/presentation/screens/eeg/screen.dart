import 'package:epilepsy/config/config.dart';
import 'package:epilepsy/controllers/eeg_controller.dart';
import 'package:epilepsy/screens/eeg/widgets/body.dart';
import 'package:epilepsy/utils/sizes.dart';
import 'package:epilepsy/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
