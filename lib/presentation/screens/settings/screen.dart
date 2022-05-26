import 'package:epilepsy/presentation/screens/settings/widgets/date_birth.dart';
import 'package:epilepsy/presentation/screens/settings/widgets/gender_select/widget.dart';
import 'package:epilepsy/presentation/screens/settings/widgets/info_card/widget.dart';
import 'package:epilepsy/presentation/screens/settings/widgets/language_select.dart';
import 'package:epilepsy/presentation/screens/settings/widgets/name_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../application/profile_controller.dart';
import '../../../domain/config/icons.dart';
import '../../../domain/utils/sizes.dart';
import '../../widgets/app_button.dart';
import '../../widgets/custom_app_bar.dart';

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
