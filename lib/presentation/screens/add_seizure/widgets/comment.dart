import 'package:epilepsy/config/config.dart';
import 'package:epilepsy/controllers/add_seizure_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Comment extends GetView<AddSeizureController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
          child: Text(
            'seizureComment'.tr,
            style: TextStyles.drugCalendar,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: BoxStyles.boxInnerShadow,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            maxLines: 4,
            onChanged: (val) => controller.notice = val,
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
              hintText: 'enterSeizureComment'.tr,
              hintStyle: TextStyles.subTitle,
            ),
          ),
        ),
      ],
    );
  }
}
