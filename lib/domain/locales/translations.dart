import 'package:get/get.dart';

import './en.dart';

import './ru.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ru': ru,
      };
}
