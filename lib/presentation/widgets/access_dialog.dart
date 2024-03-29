import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/config/colors.dart';
import '../../domain/config/styles.dart';

accessDialog(dialogData) {
  Get.dialog(
    Scaffold(
      backgroundColor: Colors.transparent,
      body: StatefulBuilder(
        builder: (context, setState) => Center(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 30.0,
            ),
            width: 335.0,
            height: 487.0,
            decoration: BoxDecoration(
              color: Palette.scaffoldBackgorund,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const Text(
                  'Вид припадка',
                  style: TextStyles.trainerCardTitle,
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Container(
                      height: 1.0,
                      margin: const EdgeInsets.only(
                        top: 15.0,
                      ),
                      color: Colors.grey[300],
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    itemCount: dialogData.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 30.0,
                        child: CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          checkColor: Palette.purple,
                          activeColor: Colors.transparent,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: dialogData[index]['isChecked'],
                          onChanged: (bool? newValue) {
                            setState(
                              () => dialogData[index]['isChecked'] = newValue,
                            );
                          },
                          title: Text(
                            dialogData[index]['title'],
                            style: dialogData[index]['isChecked']
                                ? TextStyles.checked
                                : TextStyles.notChecked,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 145.0,
                      height: 45.0,
                      child: ElevatedButton(
                        onPressed: () => Get.back(),
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                            color: Palette.purple,
                            width: 1.0,
                          ),
                          elevation: 0.0,
                          primary: Palette.scaffoldBackgorund,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                        child: const Text(
                          'Отмена',
                          style: TextStyles.dialogCancel,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 145.0,
                      height: 45.0,
                      child: ElevatedButton(
                        onPressed: () => Get.back(),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Palette.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                        child: const Text(
                          'Сохранить',
                          style: TextStyles.dialog,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
