import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../application/session_controller.dart';
import '../../../../domain/config/colors.dart';

class Buttons extends GetView<SessionsController> {
  final txtController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextFormField(
              controller: txtController,
              onChanged: (value) {
                controller.message = value;
              },
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                hintText: 'Напишите сообщение...',
              ),
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 14,
                color: const Color(0xff646974),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          GestureDetector(
            onTap: () {
              if (controller.message.isNotEmpty &&
                  !controller.isSendMessagesLoading()) {
                controller.sendMessage();
                txtController.text = '';
              }
            },
            child: Obx(() {
              if (!controller.isSendMessagesLoading()) {
                return SvgPicture.asset(
                  'assets/icons/send.svg',
                  fit: BoxFit.cover,
                  width: 40,
                  height: 40,
                );
              }
              return SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: Palette.purple,
                  strokeWidth: 2,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
