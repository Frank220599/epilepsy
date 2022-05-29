import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../domain/config/colors.dart';
import '../../../../domain/config/styles.dart';
import '../../../../domain/utils/launch_link.dart';
import '../../../../infrastracture/handbook/model/news.dart';

class NewsCard extends StatelessWidget {
  final News news;
  final String date;
  const NewsCard({
    Key? key,
    required this.news,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xffeaebf3),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3924415d),
            offset: Offset(2, 2),
            blurRadius: 3,
          ),
          BoxShadow(
            color: Color(0xb2ffffff),
            offset: Offset(-2, -2),
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 15.0),
            width: double.infinity,
            child: Image.network(
              news.image!,
              width: double.infinity,
              height: 150.0,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 300.0,
            margin: const EdgeInsets.only(bottom: 15.0),
            child: Text(
              news.short!,
              softWrap: true,
              style: TextStyles.newsText,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                date,
                style: TextStyles.newsDate,
              ),
              SizedBox(
                width: 114.0,
                height: 28.0,
                child: ElevatedButton(
                  onPressed: () => launchURL(news.link),
                  child: Text(
                    'more'.tr,
                    style: TextStyles.newsButton,
                  ),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Palette.purple, width: 1.0),
                    elevation: 0.0,
                    primary: Palette.scaffoldBackgorund,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
