import 'package:epilepsy/presentation/screens/add_drug/widgets/comment.dart';
import 'package:epilepsy/presentation/screens/add_drug/widgets/dosage.dart';
import 'package:epilepsy/presentation/screens/add_drug/widgets/drug_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../application/add_drug_controller.dart';
import '../../../domain/config/icons.dart';
import '../../../domain/utils/img_picker.dart';
import '../../../domain/utils/sizes.dart';
import '../../../infrastracture/drug/model/drug.dart';
import '../../widgets/app_button.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_list_tile.dart';
import '../../widgets/remove_focus.dart';

class AddDrugScreen extends StatefulWidget {
  @override
  _AddDrugScreenState createState() => _AddDrugScreenState();
}

class _AddDrugScreenState extends State<AddDrugScreen> {
  final controller = Get.put(AddDrugController());
  final DrugModel drug = Get.arguments;

  @override
  void initState() {
    if (drug != null) {
      final set = controller;
      set.dateStart(drug.dateStart);
      set.dateEnd(drug.dateEnd);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bool isEdit = drug != null;
    _pickDate(isStart) async {
      DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 100),
        lastDate: DateTime(DateTime.now().year + 1),
      );
      if (date != null) {
        final formattedDate = date.toString().split(' ')[0];
        if (isStart) {
          controller.dateStart(formattedDate);
        } else {
          controller.dateEnd(formattedDate);
        }
      }
    }

    return RemoveFocus(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(GetSize.width, 100.0),
          child: CustomAppBar(
            onTap: () => Get.back(),
            hasAction: false,
            leading: AppIcons.back,
            title: isEdit ? 'editDrug'.tr : 'addDrug'.tr,
            // title: 'Добавить лекрство',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      DrugTitle(),
                      Dosage(),
                      Column(
                        children: [
                          Obx(
                            () => CustomListTile(
                              onTap: () => _pickDate(true),
                              leading: AppIcons.accessMind,
                              subTitle: 'startDate'.tr,
                              // title: dateTime.toString(),
                              title: controller.dateStart().isNotEmpty
                                  ? controller.dateStart()
                                  : 'startDate'.tr,
                            ),
                          ),
                          Obx(
                            () {
                              return CustomListTile(
                                onTap: () => _pickDate(false),
                                leading: AppIcons.accessMind,
                                subTitle: 'selectEndDate'.tr,
                                // title: dateTime.toString(),
                                title: controller.dateEnd().isNotEmpty
                                    ? controller.dateEnd()
                                    : 'selectEndDate'.tr,
                              );
                            },
                          ),
                          CustomListTile(
                            onTap: () async {
                              final image = await pickImgFromGallery();
                              if (image != null) {
                                controller.image(image);
                              }
                            },
                            leading: AppIcons.accessMind,
                            title: 'attachPhoto'.tr,
                          ),
                          Obx(() {
                            final img = isEdit ? drug.image : null;
                            return Column(
                              children: [
                                if (img != null &&
                                    controller.image().path.isEmpty)
                                  SizedBox(
                                    width: double.infinity,
                                    height: 200,
                                    child: Image(
                                      image: NetworkImage(img),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                if (controller.image().path.isNotEmpty)
                                  SizedBox(
                                    width: double.infinity,
                                    height: 200,
                                    child: Image(
                                      image: AssetImage(
                                        controller.image().path,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  )
                              ],
                            );
                          })
                        ],
                      ),
                      Comment(
                        onChange: (val) => controller.comment = val,
                      ),
                      const SizedBox(height: 40.0),
                    ],
                  ),
                ),
              ),
              Center(
                child: Obx(
                  () => AppButton(
                    isLoading: controller.isLoading(),
                    label: 'save'.tr,
                    onTap: () {
                      if (isEdit) {
                        controller.updateDrug();
                      } else {
                        controller.addDrug();
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
