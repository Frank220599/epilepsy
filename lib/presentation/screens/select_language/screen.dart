import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/config/colors.dart';
import '../../../domain/constants/routes.dart';
import '../../../domain/utils/device_storage.dart';
import '../../../domain/utils/update_locale.dart';
import '../../widgets/app_button.dart';
import '../settings/widgets/language_select_modal/widget.dart';

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
