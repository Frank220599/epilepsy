import 'package:epilepsy/infrastracture/seizure/repository.dart';
import 'package:epilepsy/infrastracture/seizure/repository.dart';
import 'package:epilepsy/infrastracture/seizure/repository.dart';
import 'package:get/get.dart';

import '../infrastracture/models/seizure.dart';
import '../infrastracture/models/tendencies.dart';

class ObservableList<T> {
  var isLoading = true.obs;
  var data = <T>[].obs;
  var isError = false.obs;
}

class SeizureController extends GetxController {
  var lastThree = ObservableList<SeizureModel>();
  var seizuresByDate = ObservableList<SeizureModel>();
  var statistics = ObservableList<TendenciesModel>();

  Future<void> getSeizureTypes() async {
    try {
      lastThree.isLoading(true);
      final data = await SeizureRepository.getSeizureLastThree();
      lastThree.data(data.data);
    } catch (e) {
      lastThree.isError(true);
      throw Exception(e);
    } finally {
      lastThree.isLoading(false);
    }
  }

  Future<void> getSeizureByDate(date) async {
    try {
      seizuresByDate.isLoading(true);
      final data = await SeizureRepository.getSeizureByDate(date);
      seizuresByDate.data(data.data);
    } catch (e) {
      seizuresByDate.isError(true);
      throw Exception(e);
    } finally {
      seizuresByDate.isLoading(false);
    }
  }

  Future<void> getStatistics() async {
    try {
      statistics = ObservableList<TendenciesModel>();
      final data = await SeizureRepository.getStatistics();
      statistics.data.add(data.data);
    } catch (e) {
      statistics.isError(true);
      throw Exception(e);
    } finally {
      statistics.isLoading(false);
    }
  }

  @override
  void onInit() {
    getSeizureTypes();
    super.onInit();
  }
}
