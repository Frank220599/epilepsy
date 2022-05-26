import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

import '../../../application/handbook_controller.dart';
import '../../../application/profile_controller.dart';
import '../../../domain/config/colors.dart';
import '../../../domain/config/icons.dart';
import '../../../domain/config/styles.dart';
import '../../../domain/constants/routes.dart';
import '../../../domain/utils/launch_link.dart';

class CustomDrawer extends GetView<ProfileController> {
  final hdController = Get.find<HandBookController>();

  CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<int, dynamic> drawerData = {
      0: {
        'icon': AppIcons.drawerCalendar,
        'text': 'calendar'.tr,
        'route': ROUTES.CALENDAR
      },
      1: {
        'icon': AppIcons.tendencies,
        'text': 'tendencies'.tr,
        'route': ROUTES.SEIZURES
      },
      2: {
        'icon': AppIcons.energy,
        'text': 'drugs'.tr,
        'route': ROUTES.DRUGS,
      },
      3: {
        'icon': AppIcons.plants,
        'text': 'rates'.tr,
        'route': ROUTES.RATES,
      },
      4: {
        'icon': AppIcons.doctor,
        'text': 'doctors'.tr,
        'route': ROUTES.DOCTORS,
      },
      5: {
        'icon': AppIcons.doctor,
        'text': 'sessions'.tr,
        'route': ROUTES.SESSIONS,
      },
      6: {
        'icon': AppIcons.eeg,
        'text': 'eeg'.tr,
        'route': ROUTES.EEG,
      },
      7: {
        'icon': AppIcons.news,
        'text': 'news'.tr,
        'route': ROUTES.NEWS,
      },
      8: {
        'icon': AppIcons.settings,
        'text': 'settings'.tr,
        'route': ROUTES.SETTINGS
      },
      9: {
        'icon': AppIcons.aboutApp,
        'text': 'aboutApp'.tr,
        'route': ROUTES.ABOUT_APP
      },
      10: {
        'icon': AppIcons.support,
        'text': 'support'.tr,
        'url': hdController.contacts().supportLink,
      },
      11: {
        'icon': AppIcons.faq,
        'text': 'faq'.tr,
        'route': ROUTES.FAQ,
      },
    };

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
          controller.logout();
        },
      );
      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text("logout".tr),
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

    return Scaffold(
      backgroundColor: Palette.scaffoldBackgorund,
      body: Container(
        color: Palette.scaffoldBackgorund,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 100, bottom: 30),
                child: Column(
                    children: List.generate(
                  drawerData.length,
                  (index) => ListTile(
                    onTap: () {
                      drawerData[index]['route'] != null
                          ? Get.toNamed(drawerData[index]['route'])
                          : launchURL(drawerData[index]['url']);
                      ZoomDrawer.of(context)?.close();
                    },
                    leading: SvgPicture.asset(
                      drawerData[index]['icon'],
                      fit: BoxFit.scaleDown,
                    ),
                    title: Text(
                      drawerData[index]['text'],
                      style: TextStyles.drawerText,
                    ),
                  ),
                )),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5, bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
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
              child: ListTile(
                leading: SvgPicture.asset(
                  AppIcons.exit,
                  fit: BoxFit.scaleDown,
                ),
                title: Text(
                  'logout'.tr,
                  style: TextStyles.drawerText,
                ),
                onTap: showAlertDialog,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
