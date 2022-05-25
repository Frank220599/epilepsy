import 'package:epilepsy/config/config.dart';
import 'package:epilepsy/controllers/handbook_controller.dart';
import 'package:epilepsy/screens/news/widgets/widgets.dart';
import 'package:epilepsy/utils/sizes.dart';
import 'package:epilepsy/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
