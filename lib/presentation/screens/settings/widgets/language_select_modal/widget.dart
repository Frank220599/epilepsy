import 'package:epilepsy/config/config.dart';
import 'package:epilepsy/screens/settings/widgets/language_select_modal/widgets/custom_checkbox.dart';
import 'package:epilepsy/screens/settings/widgets/language_select_modal/widgets/langugage_item.dart';
import 'package:epilepsy/utils/device_storage.dart';
import 'package:epilepsy/utils/update_locale.dart';
import 'package:epilepsy/widgets/app_button.dart';
import 'package:epilepsy/widgets/cusom_modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    updateLocale(selectedLang);
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
