import 'package:epilepsy/models/doctor.dart';
import 'package:epilepsy/services/doctors_service.dart';
import 'package:get/get.dart';

class ObservableList<T> {
  var isLoading = true.obs;
  var data = <T>[].obs;
  var isError = false.obs;
}

class DoctorsController extends GetxController {
  var doctorList = ObservableList<DoctorModel>();

  var isRatesLoading = true.obs;

  Future<void> getDoctors() async {
    try {
      doctorList = ObservableList<DoctorModel>();
      final data = await DoctorsService.getDoctors();
      doctorList.data(data.data);
    } catch (e) {
      doctorList.isError(true);
      throw Exception(e);
    } finally {
      doctorList.isLoading(false);
    }
  }

  @override
  void onInit() {
    getDoctors();
    super.onInit();
  }
}
