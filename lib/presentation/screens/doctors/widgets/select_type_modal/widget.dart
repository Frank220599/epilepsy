import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../application/rates_controller.dart';
import '../../../../../application/session_controller.dart';
import '../../../../../domain/config/styles.dart';
import '../../../../../domain/utils/sizes.dart';
import '../../../../widgets/cusom_modal.dart';
import '../../../add_seizure/widgets/select_type_modal/widgets/langugage_item.dart';

class TypeSelectModal extends StatefulWidget {
  final doctorId;

  const TypeSelectModal({Key? key, this.doctorId}) : super(key: key);

  @override
  _TypeSelectModalState createState() => _TypeSelectModalState();
}

class _TypeSelectModalState extends State<TypeSelectModal> {
  final controller = Get.find<RatesController>();
  final sController = Get.put(SessionsController());
  var selectedValue;

  @override
  void initState() {
    selectedValue = controller.ratesList.data[0].id;
    super.initState();
  }

  void onSave() {
    sController.createSessions({
      'rate_id': selectedValue,
      'doctor_id': widget.doctorId,
    });
  }

  @override
  Widget build(BuildContext context) {
    final data = controller.ratesList.data;
    return CustomModal(
      isLoading: sController.isCreateSessionLoading.value,
      label: 'Начат сеанс',
      height: GetSize.height * 0.6,
      insetPaddingV: 0,
      onSave: onSave,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const Text(
            'Тарифы',
            style: TextStyles.trainerCardTitle,
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: GetSize.height * 0.4,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return LanguageItem(
                  title: data[index].title!,
                  onChange: () {
                    setState(() {
                      selectedValue = data[index].id;
                    });
                  },
                  isChecked: selectedValue == data[index].id,
                );
              },
              itemCount: data.length,
            ),
          ),
        ],
      ),
    );
  }
}
