import 'package:epilepsy/config/config.dart';
import 'package:epilepsy/controllers/add_eeg_controller.dart';
import 'package:epilepsy/models/eeg.dart';
import 'package:epilepsy/screens/add_eeg/widgets/comment.dart';
import 'package:epilepsy/utils/img_picker.dart';
import 'package:epilepsy/utils/sizes.dart';
import 'package:epilepsy/widgets/app_button.dart';
import 'package:epilepsy/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final controller = Get.put(AddEegController());
  final EegModel eeg = Get.arguments;

  @override
  void initState() {
    if (eeg != null) {
      final set = controller;
      set.date(eeg.date);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bool isEdit = eeg != null;

    _pickDate() async {
      DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5),
      );
      final formattedDate = date.toString().split(' ')[0];
      controller.date(formattedDate);
    }

    return Scaffold(
      backgroundColor: const Color(0xffEAEBF3),
      appBar: PreferredSize(
        preferredSize: Size(GetSize.width, 100.0),
        child: CustomAppBar(
          onTap: () => Get.back(),
          hasAction: false,
          leading: AppIcons.back,
          title: isEdit ? 'Изменить ЭЭГ' : 'Добавить ЭЭГ',
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        final image = await pickImgFromGallery();
                        if (image != null) {
                          controller.image(image);
                        }
                      },
                      child: CustomListTile(
                        onTap: () async {
                          final image = await pickImgFromGallery();
                          if (image != null) {
                            controller.image(image);
                          }
                        },
                        leading: AppIcons.accessCalendar,
                        title: 'attachPhoto'.tr,
                      ),
                    ),
                    Obx(
                      () {
                        final img = isEdit ? eeg.image : null;
                        return Column(
                          children: [
                            if (img != null && controller.image().path.isEmpty)
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                width: double.infinity,
                                height: 200,
                                child: Image(
                                  image: NetworkImage(img),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            if (controller.image().path.isNotEmpty)
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                width: double.infinity,
                                height: 200,
                                child: Image(
                                  image: AssetImage(controller.image().path),
                                  fit: BoxFit.cover,
                                ),
                              )
                          ],
                        );
                      },
                    ),
                    SizedBox(),
                    Obx(
                      () => CustomListTile(
                        onTap: _pickDate,
                        leading: AppIcons.accessMind,
                        subTitle: 'photoDate'.tr,
                        // title: dateTime.toString(),
                        title: controller.date().isNotEmpty
                            ? controller.date()
                            : 'selectPhotoDate'.tr,
                      ),
                    ),
                  ],
                ),
                Comment(),
              ],
            ),
          ),
          Spacer(),
          Center(
            child: Obx(
              () => AppButton(
                isLoading: controller.isLoading(),
                label: 'save'.tr,
                onTap: () {
                  if (isEdit) {
                    controller.updateDrug();
                  } else {
                    controller.addEeg();
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
