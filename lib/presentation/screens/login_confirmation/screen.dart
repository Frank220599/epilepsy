import 'package:epilepsy/presentation/screens/login_confirmation/widgets/resend_code_button.dart';
import 'package:flutter/material.dart';

import '../../../domain/config/colors.dart';
import '../../../domain/config/styles.dart';
import 'widgets/widgets.dart';
import 'package:get/get.dart';

class LoginConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final md = MediaQuery.of(context);
    final paddingTop = md.padding.top + 32;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.only(top: paddingTop),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Text(
                'authorization'.tr,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  color: const Color(0xff012d48),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'C',
                  style: TextStyles.appBarTitle.copyWith(fontSize: 50.0),
                ),
                Text(
                  'Epi',
                  style: TextStyles.appBarTitle
                      .copyWith(color: Palette.purple, fontSize: 50.0),
                ),
              ],
            ),
            SizedBox(
              height: 39,
            ),
            CodeForm(),
            ResendCodeButton(),
            Spacer(),
            AuthButton(),
            SizedBox(height: 43)
          ],
        ),
      ),
    );
  }
}
