import 'package:epilepsy/config/config.dart';
import 'package:epilepsy/controllers/profile_controller.dart';
import 'package:epilepsy/screens/settings/widgets/date_birth.dart';
import 'package:epilepsy/screens/settings/widgets/gender_select/widget.dart';
import 'package:epilepsy/screens/settings/widgets/info_card/widget.dart';
import 'package:epilepsy/screens/settings/widgets/language_select.dart';
import 'package:epilepsy/screens/settings/widgets/name_input.dart';
import 'package:epilepsy/utils/sizes.dart';
import 'package:epilepsy/widgets/app_button.dart';
import 'package:epilepsy/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(GetSize.width, 100.0),
        child: CustomAppBar(
          onTap: () => Get.back(),
          hasAction: false,
          leading: AppIcons.back,
          title: 'settings'.tr,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InfoCard(),
                    NameInput(),
                    Genders(),
                    DateOfBirth(),
                    LanguageSelect(),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Center(
            child: Obx(
              () => AppButton(
                isLoading: controller.isUpdateLoading(),
                onTap: () => controller.updateProfile(),
                label: 'save'.tr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
