import 'package:epilepsy/conf/colors.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'C',
          style: const TextStyle(
            color: Palette.darkBlue,
            fontSize: 30.0,
          ),
        ),
        Text(
          'Epi',
          style: const TextStyle(
            color: Palette.purple,
            fontSize: 30.0,
          ),
        ),
      ],
    );
  }
}
