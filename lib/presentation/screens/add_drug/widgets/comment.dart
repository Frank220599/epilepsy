import 'package:epilepsy/infrastracture/seizure/model/seizure.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../domain/config/styles.dart';

class Comment extends StatelessWidget {
  final Function(String) onChange;
  final SeizureModel? drug = Get.arguments;
  final tC = TextEditingController();

  Comment({Key? key, required this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (drug != null) {
      try {
        // tC.text = drug?.comment ?? '';
      } catch (E) {
        tC.text = drug?.notice ?? '';
      }
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
            onChanged: onChange,
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
