import 'package:epilepsy/screens/settings/widgets/language_select_modal/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:epilepsy/config/icons.dart';
import 'package:get/get.dart';

class LanguageSelect extends StatelessWidget {
  _showModal() {
    Get.dialog(
      LanguageSelectModal(),
      barrierColor: Colors.transparent,
      barrierDismissible: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showModal,
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        padding: EdgeInsets.symmetric(horizontal: 19),
        height: 59,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xffeaebf3),
          boxShadow: [
            BoxShadow(
              color: const Color(0x3924415d),
              offset: Offset(2, 2),
              blurRadius: 3,
            ),
            BoxShadow(
              color: const Color(0xb2ffffff),
              offset: Offset(-2, -2),
              blurRadius: 3,
            )
          ],
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'language'.tr,
                  style: TextStyle(
                    fontFamily: 'SF UI Display',
                    fontSize: 14,
                    color: const Color(0xff929293),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Русский',
                  style: TextStyle(
                    fontFamily: 'SF UI Display',
                    fontSize: 16,
                    color: const Color(0xff0e3062),
                    letterSpacing: 0.004480000019073486,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Spacer(),
            SvgPicture.asset(AppIcons.right),
          ],
        ),
      ),
    );
  }
}
