import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../application/add_eeg_controller.dart';
import '../../../../domain/config/styles.dart';
import '../../../../infrastracture/egg/models/eeg.dart';

class Comment extends GetView<AddEegController> {
  final EegModel eeg = Get.arguments;
  final tC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    if (eeg != null) {
      tC.text = eeg.comment!;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
          child: Text(
            'comment'.tr,
            style: TextStyles.drugCalendar,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: BoxStyles.boxInnerShadow,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: tC,
            maxLines: 4,
            onChanged: (val) => controller.comment = val,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 15.0,
              ),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: 'enterComment'.tr,
              hintStyle: TextStyles.subTitle,
            ),
          ),
        ),
      ],
    );
  }
}
