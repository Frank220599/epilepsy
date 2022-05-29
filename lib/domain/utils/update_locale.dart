import 'dart:ui';

import 'package:get/get.dart';

import 'device_storage.dart';

void updateLocale(String languageCode) {
  DeviceStorage.locale = languageCode;
  var locale = Locale(languageCode);
  Get.updateLocale(locale);
  Get.back();
}
