import 'package:epilepsy/infrastracture/drug/repository.dart';
import 'package:get/get.dart';

import '../infrastracture/drug/model/drug.dart';

class ObservableList<T> {
  var isLoading = true.obs;
  var data = <T>[].obs;
  var isError = false.obs;
}

class DrugController extends GetxController {
  var drugs = ObservableList<DrugModel>();

  var isDrugDetailsLoading = false.obs;
  var isDrugDetailsError = false.obs;
  var drugDetailsData = DrugModel().obs;

  Future<void> getDrugList() async {
    try {
      drugs = ObservableList<DrugModel>();
      final data = await DrugRepository.getDrugList();
      drugs.data(data.data);
    } catch (e) {
      drugs.isError(true);
      throw Exception(e);
    } finally {
      drugs.isLoading(false);
    }
  }

  Future<void> drugStore() async {
    try {
      final data = await DrugRepository.drugStore({});
    } catch (e) {
      throw Exception(e);
    } finally {}
  }

  Future<void> drugDelete(id) async {
    try {
      await DrugRepository.drugDelete(id);
      var newData = drugs.data.where((element) {
        if (element.id == id) {
          return false;
        }
        return true;
      });
      drugs.data.value = newData.toList();
    } catch (e) {
      throw Exception(e);
    } finally {}
  }

  Future<void> getDrugDetails(id) async {
    try {
      isDrugDetailsLoading(true);
      isDrugDetailsError(false);
      final data = await DrugRepository.getDrugDetails(id);
      drugDetailsData(data);
    } catch (e) {
      isDrugDetailsError(true);
      throw Exception(e);
    } finally {
      isDrugDetailsLoading(false);
    }
  }

  @override
  void onInit() {
    getDrugList();
    super.onInit();
  }
}
