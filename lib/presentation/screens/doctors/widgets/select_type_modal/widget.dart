import 'package:epilepsy/config/config.dart';
import 'package:epilepsy/controllers/rates_controller.dart';
import 'package:epilepsy/controllers/session_controller.dart';
import 'package:epilepsy/screens/settings/widgets/language_select_modal/widgets/langugage_item.dart';
import 'package:epilepsy/utils/sizes.dart';
import 'package:epilepsy/widgets/cusom_modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                  title: data[index].title,
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
