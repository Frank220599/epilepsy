import 'package:epilepsy/infrastracture/drug/repository.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart' as dio;

import '../infrastracture/drug/model/drug.dart';
import 'drug_controller.dart';

class AddDrugController extends GetxController {
  var isLoading = false.obs;
  var image = XFile('').obs;
  var dateStart = ''.obs;
  var dateEnd = ''.obs;
  var comment = '';
  var dosage = '';
  var title = '';

  Future<void> addDrug() async {
    try {
      if (title.isEmpty) {
        Get.snackbar('Ошибка', 'Введите название');
        return;
      }
      isLoading(true);
      dio.FormData formData;
      if (image().path.isNotEmpty) {
        String fileName = image().path.split('/').last;
        formData = dio.FormData.fromMap({
          "image": await dio.MultipartFile.fromFile(
            image().path,
            filename: fileName,
          ),
          'date_start': dateStart,
          'title': title,
          'dosage': dosage,
          'date_end': dateEnd,
          'comment': comment,
        });
      } else {
        formData = dio.FormData.fromMap({
          'date_start': dateStart,
          'title': title,
          'dosage': dosage,
          'date_end': dateEnd,
          'comment': comment,
        });
      }

      final data = await DrugRepository.drugStore(formData);
      final controller = Get.find<DrugController>();
      controller.drugs.data.insert(0, data.data!);
      Get.back();
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading(false);
    }
  }

  Future<void> updateDrug() async {
    try {
      isLoading(true);
      final DrugModel drug = Get.arguments;
      dio.MultipartFile? imgFile;
      if (image().path.isNotEmpty) {
        String fileName = image().path.split('/').last;
        imgFile = await dio.MultipartFile.fromFile(
          image().path,
          filename: fileName,
        );
      }
      dio.FormData formData = dio.FormData.fromMap({
        'date_start': dateStart,
        'title': title.isNotEmpty ? title : drug.title,
        'dosage': dosage.isNotEmpty ? dosage : drug.dosage,
        'date_end': dateEnd,
        'comment': comment.isNotEmpty ? comment : drug.comment,
        if (imgFile != null) 'image': imgFile
      });

      final data =
          await DrugRepository.drugUpdate(id: drug.id, payload: formData);
      final controller = Get.find<DrugController>();
      var newData = controller.drugs.data.map((element) {
        if (element.id == drug.id) {
          return data.data;
        }
        return element;
      });
      controller.drugs.data.value = newData.toList() as List<DrugModel>;
      Get.back();
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading(false);
    }
  }
}
