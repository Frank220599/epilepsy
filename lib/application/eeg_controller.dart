import 'package:epilepsy/models/eeg.dart';
import 'package:epilepsy/services/eeg_service.dart';
import 'package:get/get.dart';

class ObservableList<T> {
  var isLoading = true.obs;
  var data = <T>[].obs;
  var isError = false.obs;
}

class EegController extends GetxController {
  var eegList = ObservableList<EegModel>();

  var isEegDetailsLoading = false.obs;
  var isEegDetailsError = false.obs;
  var eegDetailsData = EegModel().obs;

  Future<void> getEegList() async {
    try {
      eegList = ObservableList<EegModel>();
      final data = await EegService.getEegList();
      eegList.data(data.data);
    } catch (e) {
      eegList.isError(true);
      throw Exception(e);
    } finally {
      eegList.isLoading(false);
    }
  }

  Future<void> eegStore() async {
    try {
      final data = await EegService.eegStore({});
    } catch (e) {
      throw Exception(e);
    } finally {}
  }

  Future<void> eegDelete(id) async {
    try {
      final data = await EegService.eegDelete(id);
    } catch (e) {
      throw Exception(e);
    } finally {}
  }

  Future<void> getEegDetails(id) async {
    try {
      isEegDetailsLoading(true);
      isEegDetailsError(false);
      final data = await EegService.getEegDetails(id);
      eegDetailsData(data);
    } catch (e) {
      isEegDetailsError(true);
      throw Exception(e);
    } finally {
      isEegDetailsLoading(false);
    }
  }

  @override
  void onInit() {
    getEegList();
    super.onInit();
  }
}
