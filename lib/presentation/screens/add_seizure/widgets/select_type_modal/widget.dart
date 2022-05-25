import 'package:epilepsy/config/config.dart';
import 'package:epilepsy/controllers/add_seizure_controller.dart';
import 'package:epilepsy/controllers/handbook_controller.dart';
import 'package:epilepsy/models/handbook.dart';
import 'package:epilepsy/screens/settings/widgets/language_select_modal/widgets/langugage_item.dart';
import 'package:epilepsy/utils/sizes.dart';
import 'package:epilepsy/widgets/cusom_modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TypeSelectModal extends StatefulWidget {
  final index;

  const TypeSelectModal({Key? key, this.index}) : super(key: key);

  @override
  _TypeSelectModalState createState() => _TypeSelectModalState();
}

class _TypeSelectModalState extends State<TypeSelectModal> {
  final controller = Get.find<HandBookController>();
  final addController = Get.find<AddSeizureController>();
  var selectedValue;

  List<HandbookModel> getData() {
    switch (widget.index) {
      case 0:
        return controller.seizureTypes.data;
      case 1:
        return controller.seizureReasons.data;
      case 2:
        return controller.seizureActivities.data;
      case 3:
        return controller.seizurePlaces.data;
      default:
        return [];
    }
  }

  String getValue() {
    switch (widget.index) {
      case 0:
        return addController.type.value;
      case 1:
        return addController.reason.value;
      case 2:
        return addController.activity.value;
      case 3:
        return addController.place.value;
      default:
        return '';
    }
  }

  @override
  void initState() {
    selectedValue = getValue();
    super.initState();
  }

  void onSave() {
    switch (widget.index) {
      case 0:
        addController.type(selectedValue);
        break;
      case 1:
        addController.reason(selectedValue);
        break;
      case 2:
        addController.activity(selectedValue);
        break;
      case 3:
        addController.place(selectedValue);
        break;
    }
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    final data = getData();
    return CustomModal(
      height: GetSize.height * 0.6,
      insetPaddingV: 0,
      onSave: onSave,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const Text(
            'Язык',
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
                      selectedValue = data[index].title;
                    });
                  },
                  isChecked: selectedValue == data[index].title,
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
