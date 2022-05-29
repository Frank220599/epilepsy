import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../application/profile_controller.dart';
import '../../../../domain/config/icons.dart';

class DateOfBirth extends StatefulWidget {
  const DateOfBirth({Key? key}) : super(key: key);

  @override
  _DateOfBirthState createState() => _DateOfBirthState();
}

class _DateOfBirthState extends State<DateOfBirth> {
  final controller = Get.find<ProfileController>();
  var date;

  @override
  void initState() {
    setState(() {
      date = controller.profile().profile!.birthday ?? '';
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    pickDate() async {
      DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 100),
        lastDate: DateTime(DateTime.now().year + 1),
      );
      final normalizedDate = selectedDate.toString().split(' ')[0];
      if (normalizedDate != 'null') {
        controller.profile().profile!.birthday = normalizedDate;
        setState(() {
          date = normalizedDate;
        });
      }
    }

    return GestureDetector(
      onTap: pickDate,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 19),
        height: 59,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xffeaebf3),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3924415d),
              offset: Offset(2, 2),
              blurRadius: 3,
            ),
            BoxShadow(
              color: Color(0xb2ffffff),
              offset: Offset(-2, -2),
              blurRadius: 3,
            )
          ],
        ),
        child: Row(
          children: [
            SvgPicture.asset(AppIcons.accessCalendar),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'birthday'.tr,
                  style: const TextStyle(
                    fontFamily: 'SF UI Display',
                    fontSize: 14,
                    color: Color(0xff929293),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontFamily: 'SF UI Display',
                    fontSize: 16,
                    color: Color(0xff0e3062),
                    letterSpacing: 0.004480000019073486,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            const Spacer(),
            SvgPicture.asset(AppIcons.right),
          ],
        ),
      ),
    );
  }
}
