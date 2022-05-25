import 'package:epilepsy/controllers/eeg_controller.dart';
import 'package:epilepsy/screens/eeg/widgets/button.dart';
import 'package:epilepsy/screens/eeg/widgets/card.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Body extends GetView<EegController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final eeg = controller.eegList;
        getWidget() {
          if (eeg.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!eeg.isLoading() && !eeg.isError() && eeg.data.isEmpty) {
            return Center(
              child: Text('emptyEeg'.tr),
            );
          }
          return ListView.separated(
            clipBehavior: Clip.none,
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            itemCount: eeg.data.length,
            separatorBuilder: (context, index) => const SizedBox(height: 20.0),
            itemBuilder: (context, index) {
              final eegModel = eeg.data[index];
              // initializeDateFormatting();
              final date = DateFormat('dd.M.yyyy').parse(eegModel.date);
              final formattedDate =
                  DateFormat('dd MMMM yyyy', 'ru_RU').format(date);
              return EEGCard(
                eegModel: eegModel,
                date: formattedDate.toString(),
              );
            },
          );
        }

        return Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: getWidget(),
              ),
            ),
            AddEEGButton(),
          ],
        );
      },
    );
  }
}
