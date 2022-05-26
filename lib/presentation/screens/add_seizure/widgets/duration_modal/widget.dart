import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../application/add_seizure_controller.dart';
import '../../../../../domain/config/styles.dart';
import '../../../../widgets/cusom_modal.dart';
import 'duration_input.dart';

class DurationModal extends GetView<AddSeizureController> {
  @override
  Widget build(BuildContext context) {
    final tdController = TextEditingController(
      text: controller.duration(),
    );
    return CustomModal(
      height: 280,
      onSave: () {
        controller.duration(tdController.text);
        Get.back();
      },
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            'Язык',
            style: TextStyles.trainerCardTitle,
          ),
          SizedBox(height: 20),
          DurationInput(tdController: tdController),
        ],
      ),
    );
  }
}
