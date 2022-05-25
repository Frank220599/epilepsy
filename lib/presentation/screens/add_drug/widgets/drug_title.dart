import 'package:epilepsy/config/config.dart';
import 'package:epilepsy/controllers/add_drug_controller.dart';
import 'package:epilepsy/models/drug.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrugTitle extends GetView<AddDrugController> {
  final DrugModel drug = Get.arguments;
  final tC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    if (drug != null) {
      tC.text = drug.title;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
          child: Text(
            'enterTitle'.tr,
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
            onChanged: (val) => controller.title = val,
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
              hintText: 'enterTitleHint'.tr,
              hintStyle: TextStyles.subTitle,
            ),
          ),
        ),
      ],
    );
  }
}
