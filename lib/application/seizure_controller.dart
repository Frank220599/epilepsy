import 'package:epilepsy/models/seizure.dart';
import 'package:epilepsy/models/tendencies.dart';
import 'package:epilepsy/services/seizure_service.dart';
import 'package:get/get.dart';

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
      final data = await SeizureService.getSeizureLastThree();
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
      final data = await SeizureService.getSeizureByDate(date);
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
      final data = await SeizureService.getStatistics();
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
