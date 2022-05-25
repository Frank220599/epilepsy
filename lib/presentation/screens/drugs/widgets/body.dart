import 'package:epilepsy/config/colors.dart';
import 'package:epilepsy/controllers/drug_controller.dart';
import 'package:epilepsy/screens/drugs/widgets/button.dart';
import 'package:epilepsy/screens/drugs/widgets/drug/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends GetView<DrugController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var drugs = controller.drugs;
      getWidget() {
        if (drugs.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(
              color: Palette.purple,
            ),
          );
        } else if (!drugs.isLoading() &&
            !drugs.isError() &&
            drugs.data.isEmpty) {
          return Center(
            child: Text('emptyDrugs'.tr),
          );
        }
        return ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          itemCount: drugs.data.length,
          separatorBuilder: (context, index) => const SizedBox(height: 20.0),
          itemBuilder: (context, index) {
            final drugList = drugs.data[index];
            return DrugsCard(
              drugList: drugList,
            );
          },
        );
      }

      return Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: getWidget(),
            ),
          ),
          DrugsButton()
        ],
      );
    });
  }
}
