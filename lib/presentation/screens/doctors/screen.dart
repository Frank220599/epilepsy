import 'package:epilepsy/config/icons.dart';
import 'package:epilepsy/controllers/doctors_controller.dart';
import 'package:epilepsy/controllers/rates_controller.dart';
import 'package:epilepsy/screens/doctors/widgets/doctor.dart';
import 'package:epilepsy/utils/sizes.dart';
import 'package:epilepsy/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/select_type_modal/widget.dart';

class DoctorsScreen extends StatefulWidget {
  DoctorsScreen({Key? key}) : super(key: key);

  @override
  _DoctorsScreenState createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  final controller = Get.put(DoctorsController());
  final ratesController = Get.put(RatesController());

  _showModal(id) {
    if (ratesController.ratesList.data.isEmpty) {
      return Get.snackbar('Ошибка', 'У вас нет купленных тарифов');
    }
    Get.dialog(
      TypeSelectModal(doctorId: id),
      barrierColor: Colors.transparent,
      barrierDismissible: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(GetSize.width, 100.0),
        child: CustomAppBar(
          onTap: () => Get.back(),
          hasAction: false,
          leading: AppIcons.back,
          title: 'doctors'.tr,
        ),
      ),
      body: Obx(() {
        final data = controller.doctorList;
        if (data.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (data.isError.value) {
          return const Center(
            child: Text('Error'),
          );
        }
        return ListView.builder(
          padding: const EdgeInsets.all(15),
          itemCount: data.data.length,
          itemBuilder: (_, index) => Doctor(
            onTap: () {
              _showModal(data.data[index].id);
            },
            data: data.data[index],
          ),
        );
      }),
    );
  }
}
