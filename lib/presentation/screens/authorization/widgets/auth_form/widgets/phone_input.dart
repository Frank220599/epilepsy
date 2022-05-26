import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../application/auth_controller.dart';
import '../../../../../../domain/utils/input_mask.dart';

class PhoneInput extends StatefulWidget {
  @override
  _PhoneInputState createState() => _PhoneInputState();
}

class _PhoneInputState extends State<PhoneInput> {
  final TextEditingController _controller = TextEditingController();

  final AuthController _authController = Get.find<AuthController>();

  @override
  void initState() {
    _controller.text = _authController.phoneNumber();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        child: TextFormField(
          keyboardType: TextInputType.phone,
          onChanged: (value) {
            if (_controller.text.length == 12) {
              FocusScope.of(context).unfocus();
            }
            _authController.phoneNumber(_controller.text);
          },
          onEditingComplete: () {
            FocusScope.of(context).unfocus();
          },
          cursorColor: Colors.black,
          inputFormatters: [InputMask.maskPhoneNumber],
          controller: _controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            isDense: true,
            hintText: 'numberWithCode'.tr,
            hintStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14,
              color: const Color(0xffa5aaa3),
            ),
          ),
        ),
      ),
    );
  }
}
