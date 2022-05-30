import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../application/add_seizure_controller.dart';
import '../../../../../domain/config/colors.dart';
import '../../../../../domain/config/styles.dart';
import '../../../../../domain/utils/input_mask.dart';

class DurationInput extends GetView<AddSeizureController> {
  final TextEditingController tdController;

  const DurationInput({required this.tdController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 22.0, bottom: 10.0),
          child: Text(
            'Введите длительность',
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
            keyboardType: TextInputType.number,
            inputFormatters: [InputMask.maskDuration],
            // onChanged: (val) => controller.profile().profile.name = val,
            controller: tdController,
            decoration: const InputDecoration(
              border: InputBorder.none,
              isDense: true,
              isCollapsed: true,
              contentPadding: EdgeInsets.all(18.0),
              hintText: 'MM:CC',
              hintStyle: TextStyles.subTitle,
            ),
          ),
        ),
      ],
    );
  }
}
