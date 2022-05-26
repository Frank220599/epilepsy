import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../application/profile_controller.dart';
import '../../../../domain/config/colors.dart';
import '../../../../domain/config/styles.dart';

class NameInput extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    final tdController = TextEditingController(
      text: controller.profile.value.profile.name,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 22.0, bottom: 10.0),
          child: Text(
            'fio'.tr,
            style: TextStyles.drugCalendar,
          ),
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: Palette.scaffoldBackgorund,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: BoxStyles.boxInnerShadow,
          ),
          child: TextField(
            onChanged: (val) => controller.profile().profile.name = val,
            controller: tdController,
            decoration: InputDecoration(
              border: InputBorder.none,
              isDense: true,
              isCollapsed: true,
              contentPadding: const EdgeInsets.all(18.0),
              hintText: 'enterFio',
              hintStyle: TextStyles.subTitle,
            ),
          ),
        ),
      ],
    );
  }
}
