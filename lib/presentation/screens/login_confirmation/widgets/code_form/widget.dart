import 'package:epilepsy/presentation/screens/login_confirmation/widgets/code_form/widgets/phone_number.dart';
import 'package:epilepsy/presentation/screens/login_confirmation/widgets/code_form/widgets/resend_code.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../application/auth_controller.dart';
import '../../../authorization/widgets/auth_form/widgets/top_text.dart';

class CodeForm extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380.0,
      height: 206.0,
      padding: EdgeInsets.symmetric(horizontal: 40),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: const Color(0xffffffff),
        border: Border.all(width: 2.0, color: const Color(0xffffffff)),
        boxShadow: [
          BoxShadow(
            color: const Color(0x1a303030),
            offset: Offset(0, 5),
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        children: [
          TopText(),
          PhoneNumber(),
          SizedBox(height: 28),
          PinCodeTextField(
            appContext: context,
            pastedTextStyle: TextStyle(
              // color: Colors.green.shade600,
              fontWeight: FontWeight.bold,
            ),
            length: 5,
            obscureText: false,
            obscuringCharacter: '*',
            blinkWhenObscuring: true,
            animationType: AnimationType.fade,
            // validator: (v) {
            //   if (v.length < 3) {
            //     return "I'm from validator";
            //   } else {
            //     return null;
            //   }
            // },
            pinTheme: PinTheme(
              activeColor: const Color(0xffdbdbdb),
              selectedColor: const Color(0xffdbdbdb),
              inactiveColor: const Color(0xffdbdbdb),
              activeFillColor: const Color(0xfffcfcfc),
              selectedFillColor: Colors.white,
              inactiveFillColor: const Color(0xfffcfcfc),
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 52,
              fieldWidth: 44,
              // activeFillColor:
              //     hasError ? Colors.white : Colors.white,
            ),
            cursorColor: Colors.black,
            // animationDuration: Duration(milliseconds: 100),
            enableActiveFill: true,
            // errorAnimationController: errorController,
            // controller: textEditingController,
            keyboardType: TextInputType.number,
            // onCompleted: (v) {
            //   print("Completed");
            // },
            onChanged: (value) {
              print(value);
              _authController.confirmationCode(value);
            },
            beforeTextPaste: (text) {
              // print("Allowing to paste $text");
              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
              //but you can show anything you want here, like your pop up saying wrong paste format or etc
              return true;
            },
          ),
          SizedBox(height: 15),
          ResendCode()
        ],
      ),
    );
  }
}
