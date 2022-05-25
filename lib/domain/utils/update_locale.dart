import 'dart:ui';

import 'package:epilepsy/utils/device_storage.dart';
import 'package:get/get.dart';

void updateLocale(String languageCode) {
  DeviceStorage.locale = languageCode;
  var locale = Locale(languageCode);
  Get.updateLocale(locale);
  Get.back();
}
