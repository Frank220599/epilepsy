import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../application/handbook_controller.dart';
import '../../../domain/config/icons.dart';
import '../../../domain/utils/sizes.dart';
import '../../widgets/custom_app_bar.dart';
import 'widgets/faq_card.dart';

class FaqScreen extends StatefulWidget {
  @override
  _FaqScreenState createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  final controller = Get.find<HandBookController>();

  @override
  void initState() {
    super.initState();
    controller.getFAQ();
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
          title: 'faq'.tr,
        ),
      ),
      body: Obx(() {
        var faq = controller.faq;
        if (faq.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (!faq.isLoading.value && !faq.isError.value) {
          Center(
            child: Text('emptyFaq'.tr),
          );
        }
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: faq.data.length,
                itemBuilder: (context, index) {
                  final data = faq.data[index];
                  return FAQCard(data: data);
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
