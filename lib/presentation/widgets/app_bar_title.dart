import 'package:epilepsy/config/config.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final bool isHome;
  final String? title;

  const AppBarTitle({
    Key? key,
    required this.isHome,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isHome
        ? const Text.rich(
            TextSpan(
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 30,
                color: Color(0xff0e3062),
                letterSpacing: 0.008400000035762786,
              ),
              children: [
                TextSpan(
                  text: 'C',
                ),
                TextSpan(
                  text: 'Epi',
                  style: TextStyle(
                    color: Color(0xff9f5dd9),
                  ),
                ),
              ],
            ),
          )
        : Text(
            title ?? "not exist text",
            style: TextStyles.trainerCardTitle,
          );
  }
}
