import 'package:get_storage/get_storage.dart';

class DeviceStorage {
  static final box = GetStorage();

  static get token => box.read('TOKEN');
  static get profile => box.read('PROFILE');
  static get isFirstLaunch => box.read('IS_FIRST_LAUNCH');
  static get locale => box.read('LOCALE');

  static set token(String value) => box.write('TOKEN', value);
  static set profile(String value) => box.write('PROFILE', value);
  static set isFirstLaunch(bool value) => box.write('IS_FIRST_LAUNCH', value);
  static set locale(String value) => box.write('LOCALE', value);

  static clear() {
    box.remove('TOKEN');
    box.remove('PROFILE');
    box.remove('IS_FIRST_LAUNCH');
  }
}
