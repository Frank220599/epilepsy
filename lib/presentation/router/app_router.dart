import 'package:flutter/material.dart';
import 'package:get/get.dart' as Get;
import '../../domain/constants/routes.dart';
import '../screens/chat/screen.dart';
import '../screens/screens.dart';
import '../screens/seizures.dart';
import '../screens/sessions/screen.dart';
import 'widgets/AppDrawer.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    const Get.Transition _transitionType = Get.Transition.native;
    switch (routeSettings.name) {
      case ROUTES.AUTHORIZATION:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => AuthorizationScreen(),
        );
      case ROUTES.LOGIN_CONFIRMATION:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => LoginConfirmationScreen(),
        );
      case ROUTES.HOME:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => AppDrawer(),
        );
      case ROUTES.CALENDAR:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => CalendarScreen(),
        );
      case ROUTES.DRUGS:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => DrugsScreen(),
        );
      case ROUTES.ADD_DRUG:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => AddDrugScreen(),
        );
      case ROUTES.NEWS:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => NewsScreen(),
        );
      case ROUTES.SEIZURES:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => SeizuresScreen(),
        );
      case ROUTES.EEG:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => EEGScreen(),
        );
      case ROUTES.ADD_EEG:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => AddEegScreen(),
        );
      case ROUTES.SETTINGS:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => SettingsScreen(),
        );
      case ROUTES.FAQ:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => FaqScreen(),
        );
      case ROUTES.ABOUT_APP:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => AboutAppScreen(),
        );
      case ROUTES.SELECT_LANGUAGE:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => SelectLanguageScreen(),
        );
      case ROUTES.ADD_SEIZURE:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => AddSeizureScreen(),
        );
      case ROUTES.DOCTORS:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => DoctorsScreen(),
        );
      case ROUTES.RATES:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => RatesScreen(),
        );
      case ROUTES.SESSIONS:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => SessionsScreen(),
        );
      case ROUTES.SESSIONS_SINGLE:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => ChatScreen(),
        );
      default:
        return Get.GetPageRoute(
          transition: _transitionType,
          settings: routeSettings,
          page: () => ChatScreen(),
        );
    }
  }
}
