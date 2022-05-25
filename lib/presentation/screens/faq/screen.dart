import 'package:epilepsy/config/config.dart';
import 'package:epilepsy/controllers/handbook_controller.dart';
import 'package:epilepsy/utils/sizes.dart';
import 'package:epilepsy/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
