import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../application/session_controller.dart';
import '../../../../domain/constants/routes.dart';
import '../../../../infrastracture/session/models/session.dart';
import '../../../widgets/app_button.dart';

class Session extends GetView<SessionsController> {
  final SessionModel data;

  const Session({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    showAlertDialog() {
      // set up the buttons
      Widget cancelButton = TextButton(
        child: const Text("Нет"),
        onPressed: () {
          Get.back();
        },
      );
      Widget continueButton = TextButton(
        child: const Text("Да"),
        onPressed: () {
          if (data.status == 'new') {
            controller.changeSessionStatus(
              id: data.id,
              status: 'canceled',
            );
          }
          if (data.status == 'opened') {
            controller.changeSessionStatus(
              id: data.id,
              status: 'closed',
            );
          }
        },
      );
      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text("Внимание".tr),
        content: Text("sure".tr),
        actions: [
          cancelButton,
          continueButton,
        ],
      );
      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    return GestureDetector(
      onTap: () {
        if (data.status != 'new') {
          Get.toNamed(
            ROUTES.SESSIONS_SINGLE,
            arguments: data.id,
          );
        }
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 15,
        ),
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
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: Image(
                    width: 50,
                    image: NetworkImage(data.doctor.profile.avatar),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInfo(
                      label: data.doctor.profile.name,
                      text: 'Cтатус: ' + data.statusText,
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.chevron_right)
              ],
            ),
            if (data.status == 'new')
              Column(
                children: [
                  const SizedBox(height: 10),
                  AppButton(
                    isLoading: controller.isChangeStatusLoading.value,
                    onTap: showAlertDialog,
                    label: 'Отменить',
                    height: 25,
                    width: 100,
                    marginBottom: 0,
                    fontSize: 14,
                  )
                ],
              ),
            if (data.status == 'opened')
              Column(
                children: [
                  const SizedBox(height: 10),
                  AppButton(
                    isLoading: controller.isChangeStatusLoading.value,
                    onTap: showAlertDialog,
                    label: 'Отменить',
                    height: 25,
                    width: 100,
                    marginBottom: 0,
                    fontSize: 14,
                  )
                ],
              )
          ],
        ),
      ),
    );
  }

  _buildInfo({label, text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'SF UI Display',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xff0e3062),
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'SF UI Display',
            fontSize: 14,
            color: Color(0xff0e3062),
          ),
        ),
      ],
    );
  }
}
