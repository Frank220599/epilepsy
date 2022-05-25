import 'package:epilepsy/config/config.dart';
import 'package:epilepsy/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'constants/routes.dart';
import 'controllers/profile_controller.dart';
import 'locales/translations.dart';
import 'utils/device_storage.dart';

void main() async {
  await GetStorage.init();

  initializeDateFormatting().then(
    (_) => runApp(
      Epilepsy(
        appRouter: AppRouter(),
      ),
    ),
  );
}

class Epilepsy extends StatelessWidget {
  final AppRouter appRouter;

  const Epilepsy({
    required this.appRouter,
  });

  _getInitialRoute() {
    final isTokenAvailable = DeviceStorage.token != null;
    final isFirstLaunch = DeviceStorage.isFirstLaunch == null;
    print(DeviceStorage.token);
    if (isFirstLaunch) {
      return ROUTES.SELECT_LANGUAGE;
    } else if (isTokenAvailable) {
      Get.put(ProfileController());
      return ROUTES.HOME;
    } else {
      return ROUTES.AUTHORIZATION;
    }
  }

  @override
  Widget build(BuildContext context) {
    final locale = DeviceStorage.locale ?? 'ru';
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppTranslations(),
      locale: Locale(locale),
      theme: ThemeData(
        fontFamily: 'SF-UI-Display',
        scaffoldBackgroundColor: Palette.scaffoldBackgorund,
        accentColor: Palette.scaffoldBackgorund,
      ),
      initialRoute: _getInitialRoute(),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
