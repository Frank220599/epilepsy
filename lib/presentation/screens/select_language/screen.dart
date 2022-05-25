import 'package:epilepsy/config/colors.dart';
import 'package:epilepsy/constants/routes.dart';
import 'package:epilepsy/screens/settings/widgets/language_select_modal/widget.dart';
import 'package:epilepsy/utils/device_storage.dart';
import 'package:epilepsy/utils/update_locale.dart';
import 'package:epilepsy/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.purple,
        title: const Text(
          'Выберите язык приложение',
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: dialogData
              .map(
                (item) => AppButton(
                  onTap: () {
                    updateLocale(item['val']);
                    DeviceStorage.isFirstLaunch = true;
                    Get.offAllNamed(ROUTES.AUTHORIZATION);
                  },
                  label: item['title'],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
