import 'package:epilepsy/application/seizure_controller.dart';
import 'package:epilepsy/infrastracture/seizure/model/seizure.dart';
import 'package:epilepsy/infrastracture/seizure/repository.dart';
import 'package:get/get.dart';

import 'handbook_controller.dart';

class AddSeizureController extends GetxController {
  var isLoading = false.obs;
  var date = ''.obs;
  var notice = '';
  var place = ''.obs;
  var duration = ''.obs;
  var type = ''.obs;
  var reason = ''.obs;
  var activity = ''.obs;

  Future<void> addSeizure() async {
    final seizure = Get.arguments;
    final bool isEdit = seizure != null;
    try {
      if (date().isEmpty) {
        Get.snackbar('Ошибка', 'Укажите дату');
        return;
      }
      isLoading(true);
      final payload = {
        'date': date(),
        'notice': notice,
        'place': place(),
        'duration': duration(),
        'type': type(),
        'reason': reason(),
        'activity': activity(),
      };
      final controller = Get.find<SeizureController>();

      if (isEdit) {
        if (payload['notice']!.isEmpty) {
          payload['notice'] = seizure.notice;
        }
        final data = await SeizureRepository.seizureUpdate(
          id: seizure.id,
          payload: payload,
        );
        var newData = controller.lastThree.data.map((element) {
          if (element.id == seizure.id) {
            return data.data;
          }
          return element;
        });
        controller.lastThree.data.value =
            newData.toList() as List<SeizureModel>;
      } else {
        final data = await SeizureRepository.seizureStore(payload);
        controller.lastThree.data.insert(0, data.data!);
      }
      Get.back();
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    Get.find<HandBookController>().getHandBooks();
    super.onInit();
  }
}
