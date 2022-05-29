import 'package:epilepsy/infrastracture/profile/repository.dart';
import 'package:get/get.dart';

import '../infrastracture/handbook/model/rate.dart';

class ObservableList<T> {
  var isLoading = true.obs;
  var data = <T>[].obs;
  var isError = false.obs;
}

class RatesController extends GetxController {
  var ratesList = ObservableList<RateModel>();

  var isRatesLoading = true.obs;

  Future<void> getUserRates() async {
    try {
      ratesList = ObservableList<RateModel>();
      final data = await ProfileRepository.getUserRates();
      ratesList.data(data.data);
    } catch (e) {
      ratesList.isError(true);
      throw Exception(e);
    } finally {
      ratesList.isLoading(false);
    }
  }

  @override
  void onInit() {
    getUserRates();
    super.onInit();
  }
}
