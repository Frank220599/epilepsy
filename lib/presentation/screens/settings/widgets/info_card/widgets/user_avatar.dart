import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../application/profile_controller.dart';
import '../../../../../../domain/config/colors.dart';
import '../../../../../../domain/utils/img_picker.dart';

class UserAvatar extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final image = await pickImgFromGallery();
        if (image != null) {
          controller.avatar(image);
          controller.updateAvatar();
        }
      },
      child: Obx(
        () => const CircleAvatar(
          radius: 50.0,
          foregroundColor: Palette.purple,
          // TODO: fix image
          // backgroundImage: controller.avatar().path.isNotEmpty
          //     ? AssetImage(controller.avatar().path)
          //     : NetworkImage(controller.profile().profile.avatar),
        ),
      ),
    );
  }
}
