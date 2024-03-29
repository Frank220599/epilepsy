import 'package:epilepsy/presentation/screens/add_drug/widgets/comment.dart';
import 'package:epilepsy/presentation/screens/add_seizure/widgets/select_type_modal/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../application/add_seizure_controller.dart';
import '../../../domain/config/icons.dart';
import '../../../domain/utils/sizes.dart';
import '../../../infrastracture/seizure/model/seizure.dart';
import '../../widgets/app_button.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_list_tile.dart';
import '../../widgets/remove_focus.dart';
import 'widgets/duration_modal/widget.dart';

class AddSeizureScreen extends StatefulWidget {
  @override
  _AddSeizureScreenState createState() => _AddSeizureScreenState();
}

class _AddSeizureScreenState extends State<AddSeizureScreen> {
  final controller = Get.put(AddSeizureController());
  final SeizureModel? seizure = Get.arguments;

  @override
  void initState() {
    if (seizure != null) {
      final set = controller;
      final data = seizure!;
      set.date(data.date);
      set.duration(data.duration);
      set.place(data.place);
      set.activity(data.activity);
      set.reason(data.reason);
      set.type(data.type);
    } else {
      final normalizedDate = DateTime.now().toString().split(' ')[0];
      controller.date(normalizedDate);
    }
    super.initState();
  }

  checkIfNotEmpty(String val, String holder) {
    if (val.isNotEmpty) {
      return val;
    }
    return holder;
  }

  _showModal(index) => () {
        Get.dialog(
          TypeSelectModal(
            index: index,
          ),
          barrierColor: Colors.transparent,
          barrierDismissible: true,
        );
      };

  _showDurationModal() {
    Get.dialog(
      DurationModal(),
      barrierColor: Colors.transparent,
      barrierDismissible: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isEdit = seizure != null;

    _pickDate() async {
      DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5),
      );

      final formattedDate = date.toString().split(' ')[0];
      print(formattedDate);
      if (formattedDate != 'null') {
        controller.date(formattedDate);
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
            title: isEdit ? 'changeSeizure' : 'addSeizure',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Obx(() => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomListTile(
                            onTap: _pickDate,
                            leading: AppIcons.accessCalendar,
                            subTitle: 'time'.tr,
                            title: checkIfNotEmpty(
                              controller.date(),
                              'seizureDate'.tr,
                            ),
                          ),
                          CustomListTile(
                            onTap: _showDurationModal,
                            leading: AppIcons.accessClock,
                            subTitle: 'duration'.tr,
                            title: checkIfNotEmpty(
                              controller.duration(),
                              'seizureDuration'.tr,
                            ),
                          ),
                          CustomListTile(
                            onTap: _showModal(0),
                            leading: AppIcons.accessMind,
                            subTitle: 'seizureType'.tr,
                            title: checkIfNotEmpty(
                              controller.type(),
                              'seizureTitle'.tr,
                            ),
                          ),
                          CustomListTile(
                            onTap: _showModal(1),
                            leading: AppIcons.accessNote,
                            subTitle: 'seizureReason'.tr,
                            title: checkIfNotEmpty(
                              controller.reason(),
                              'addReason'.tr,
                            ),
                          ),
                          CustomListTile(
                            onTap: _showModal(2),
                            leading: AppIcons.accessRun,
                            subTitle: 'activity'.tr,
                            title: checkIfNotEmpty(
                              controller.activity(),
                              'addActivity'.tr,
                            ),
                          ),
                          CustomListTile(
                            onTap: _showModal(3),
                            leading: AppIcons.mark,
                            subTitle: 'place'.tr,
                            title: checkIfNotEmpty(
                              controller.place(),
                              'addPlace'.tr,
                            ),
                          ),
                          Comment(
                            onChange: (val) => controller.notice = val,
                          ),
                          const SizedBox(height: 40.0),
                        ],
                      )),
                ),
              ),
              Center(
                child: AppButton(
                  isLoading: controller.isLoading(),
                  onTap: controller.addSeizure,
                  label: 'save'.tr,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
