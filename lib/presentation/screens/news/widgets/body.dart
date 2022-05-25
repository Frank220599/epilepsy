import 'package:epilepsy/controllers/handbook_controller.dart';
import 'package:epilepsy/screens/news/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Body extends GetView<HandBookController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        var news = controller.news;
        if (news.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (!news.isLoading.value && !news.isError.value) {
          Center(
            child: Text('emptyNews'.tr),
          );
        }
        return Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: ListView.separated(
                  clipBehavior: Clip.none,
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  itemCount: news.data.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 20.0),
                  itemBuilder: (context, index) {
                    final item = news.data[index];
                    final date = DateFormat('dd.M.yyyy').parse(item.date);
                    final formattedDate = DateFormat(
                      'dd MMMM yyyy',
                      'ru_RU',
                    ).format(date);
                    return NewsCard(
                      news: item,
                      date: formattedDate.toString(),
                    );
                  },
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
