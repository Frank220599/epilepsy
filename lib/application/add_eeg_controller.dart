import 'package:epilepsy/infrastracture/egg/repository.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart' as dio;

import '../infrastracture/models/eeg.dart';
import 'eeg_controller.dart';

class AddEegController extends GetxController {
  var isLoading = false.obs;
  var image = XFile('').obs;
  var date = ''.obs;
  var comment = '';

  Future<void> addEeg() async {
    try {
      isLoading(true);
      String fileName = image().path.split('/').last;
      dio.FormData formData = dio.FormData.fromMap({
        "image": await dio.MultipartFile.fromFile(
          image().path,
          filename: fileName,
        ),
        'date': date,
        'comment': comment,
      });
      final data = await EegRepository.eegStore(formData);
      final controller = Get.find<EegController>();
      controller.eegList.data.insert(0, data.data);
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
      final EegModel eeg = Get.arguments;
      var imgFile;
      if (image().path.isNotEmpty) {
        String fileName = image().path.split('/').last;
        imgFile = await dio.MultipartFile.fromFile(
          image().path,
          filename: fileName,
        );
      }
      dio.FormData formData = dio.FormData.fromMap({
        'date': date,
        'comment': comment.isNotEmpty ? comment : eeg.comment,
        if (imgFile != null) 'image': imgFile
      });

      final data = await EegRepository.eegUpdate(id: eeg.id, payload: formData);
      final controller = Get.find<EegController>();
      var newData = controller.eegList.data.map((element) {
        if (element.id == eeg.id) {
          return data.data;
        }
        return element;
      });
      controller.eegList.data.value = newData.toList();
      Get.back();
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading(false);
    }
  }
}
