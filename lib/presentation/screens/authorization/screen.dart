import 'package:epilepsy/config/colors.dart';
import 'package:epilepsy/config/styles.dart';
import 'package:epilepsy/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/widgets.dart';

class AuthorizationScreen extends StatelessWidget {
  final _authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.only(top: 100),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Text(
                'authorize'.tr,
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
            // Logo(),
            SizedBox(
              height: 39,
            ),
            AuthForm(),
            Spacer(),
            ContinueButton()
          ],
        ),
      ),
    );
  }
}
