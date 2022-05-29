import 'package:epilepsy/presentation/screens/settings/widgets/gender_select/widgets/gender.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../application/profile_controller.dart';

class Genders extends StatefulWidget {
  @override
  _GendersState createState() => _GendersState();
}

class _GendersState extends State<Genders> {
  final controller = Get.find<ProfileController>();
  String? selectedGender;

  @override
  void initState() {
    selectedGender = controller.profile().profile!.gender.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'gender'.tr,
            style: const TextStyle(
              fontFamily: 'SF UI Display',
              fontSize: 14,
              color: Color(0xff0e3062),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 9),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Gender(
                onTap: () {
                  controller.profile().profile!.gender = 'f';
                  setState(() {
                    selectedGender = 'f';
                  });
                },
                title: 'female'.tr,
                isActive: selectedGender == 'f',
              ),
              const SizedBox(
                width: 23,
              ),
              Gender(
                onTap: () {
                  controller.profile().profile!.gender = 'm';
                  setState(() {
                    selectedGender = 'm';
                  });
                },
                title: 'male'.tr,
                isActive: selectedGender == 'm',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
