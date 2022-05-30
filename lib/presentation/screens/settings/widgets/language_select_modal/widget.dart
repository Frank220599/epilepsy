import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../domain/config/styles.dart';
import '../../../../../domain/utils/device_storage.dart';
import '../../../../../domain/utils/update_locale.dart';
import '../../../../widgets/cusom_modal.dart';
import '../../../add_seizure/widgets/select_type_modal/widgets/langugage_item.dart';

final List<Map> dialogData = [
  {
    'title': 'Русский',
    'val': 'ru',
  },
  {
    'title': 'English',
    'val': 'en',
  },
  {
    'title': 'O\'zbek',
    'val': 'uz',
  },
];

class LanguageSelectModal extends StatefulWidget {
  @override
  _LanguageSelectModalState createState() => _LanguageSelectModalState();
}

class _LanguageSelectModalState extends State<LanguageSelectModal> {
  var selectedLang = DeviceStorage.locale;

  void onSave() {
    updateLocale(selectedLang!);
  }

  @override
  Widget build(BuildContext context) {
    return CustomModal(
      onSave: onSave,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            'Язык',
            style: TextStyles.trainerCardTitle,
          ),
          SizedBox(height: 20),
          ...dialogData
              .map((e) => LanguageItem(
                    title: e['title'],
                    onChange: () {
                      setState(() {
                        selectedLang = e['val'];
                      });
                    },
                    isChecked: selectedLang == e['val'],
                  ))
              .toList(),
        ],
      ),
    );
  }
}
