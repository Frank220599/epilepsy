import 'dart:ui';

import 'package:epilepsy/conf/colors.dart';
import 'package:epilepsy/conf/icons.dart';
import 'package:epilepsy/utils/sizes.dart';
import 'package:epilepsy/widgets/trainer_card.dart';
import 'package:epilepsy/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final rightSlide = GetSize.width * 0.6;

  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  _toggleAnimation() {
    _animationController.isDismissed
        ? _animationController.forward()
        : _animationController.reverse();
  }

  Map<int, dynamic> drawerData = {
    0: {'icon': AppIcons.drawerCalendar, 'text': 'Календарь'},
    1: {'icon': AppIcons.tendencies, 'text': 'Тенденции'},
    2: {'icon': AppIcons.energy, 'text': 'Лекарства'},
    3: {'icon': AppIcons.plants, 'text': 'Тарифы'},
    4: {'icon': AppIcons.eeg, 'text': 'ЭЭГ'},
    5: {'icon': AppIcons.news, 'text': 'Новости'},
    6: {'icon': AppIcons.settings, 'text': 'Настройки'},
    7: {'icon': AppIcons.aboutApp, 'text': 'О приложении'},
    8: {'icon': AppIcons.support, 'text': 'Служба поддержки'},
    9: {'icon': AppIcons.faq, 'text': 'FAQ'},
  };

  @override
  Widget build(BuildContext context) {
    print(drawerData);
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        double slide = rightSlide * _animationController.value;
        double scale = 1 - (_animationController.value * 0.3);

        return Stack(
          children: [
            Scaffold(
              backgroundColor: Palette.scaffoldBackgorund,
              body: Container(
                width: double.infinity,
                height: double.infinity,
                color: Palette.scaffoldBackgorund,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            children: List.generate(
                          drawerData.length,
                          (index) => ListTile(
                            leading: SvgPicture.asset(
                              drawerData[index]['icon'],
                              fit: BoxFit.scaleDown,
                            ),
                            title: Text(
                              drawerData[index]['text'],
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Palette.drawerText,
                              ),
                            ),
                          ),
                        )),
                        ListTile(
                          leading: SvgPicture.asset(
                            AppIcons.exit,
                            fit: BoxFit.scaleDown,
                          ),
                          title: Text(
                            'Выход',
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Palette.drawerText,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.identity()
                ..translate(slide)
                ..scale(scale),
              alignment: Alignment.center,
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size(GetSize.width, 100.0),
                  child: CustomAppBar(
                    onTap: () => _toggleAnimation(),
                  ),
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
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15.0),
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
              ),
            ),
          ],
        );
      },
    );
  }
}
