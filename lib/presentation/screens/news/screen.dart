import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../application/handbook_controller.dart';
import '../../../domain/config/icons.dart';
import '../../../domain/utils/sizes.dart';
import '../../widgets/custom_app_bar.dart';
import '../add_eeg/widgets/body.dart';

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final controller = Get.find<HandBookController>();
  @override
  void initState() {
    super.initState();
    controller.getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(GetSize.width, 100.0),
        child: CustomAppBar(
          onTap: () => Get.back(),
          hasAction: false,
          leading: AppIcons.back,
          title: 'news'.tr,
        ),
      ),
      body: Body(),
    );
  }
}
