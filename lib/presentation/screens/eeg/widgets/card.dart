import 'package:epilepsy/config/config.dart';
import 'package:epilepsy/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EEGCard extends StatelessWidget {
  final eegModel;
  final String date;
  const EEGCard({
    Key? key,
    required this.eegModel,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(
        ROUTES.ADD_EEG,
        arguments: eegModel,
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          boxShadow: BoxStyles.boxShadow,
          color: Palette.scaffoldBackgorund,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 15.0),
              width: double.infinity,
              child: Image.network(
                eegModel.image,
                width: double.infinity,
                height: 150.0,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  date,
                  style: TextStyles.newsDate,
                ),
                // SizedBox(
                //   width: 114.0,
                //   height: 28.0,
                //   child: ElevatedButton(
                //     // onPressed: _launchURL,
                //     onPressed: () {},
                //     child: Text(
                //       'Подробнее',
                //       style: TextStyles.newsButton,
                //     ),
                //     style: ElevatedButton.styleFrom(
                //       side: BorderSide(color: Palette.purple, width: 1.0),
                //       elevation: 0.0,
                //       primary: Palette.scaffoldBackgorund,
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(24.0),
                //       ),
                //     ),
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
