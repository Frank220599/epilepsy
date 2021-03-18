import 'dart:ui';

import 'package:epilepsy/conf/colors.dart';
import 'package:epilepsy/conf/icons.dart';
import 'package:epilepsy/utils/sizes.dart';
import 'package:epilepsy/widgets/trainer_card.dart';
import 'package:epilepsy/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(GetSize.width, 100.0),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomCard(),
            const SizedBox(height: 23.0),
            Text(
              'Последние приступы',
              style: const TextStyle(
                color: Palette.darkBlue,
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
              ),
            ),
            const SizedBox(height: 23.0),
            Expanded(
              flex: 4,
              child: ListView.separated(
                itemCount: 3,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10.0),
                itemBuilder: (context, index) => TrainerCard(),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              width: double.infinity,
              height: 64.0,
              child: RaisedButton(
                onPressed: () {},
                elevation: 0,
                color: Palette.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Text(
                  'Приступ',
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
