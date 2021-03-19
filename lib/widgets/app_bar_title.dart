import 'package:epilepsy/conf/colors.dart';
import 'package:epilepsy/conf/conf.dart';
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
          style: TextStyles.appBarTitle,
        ),
        Text(
          'Epi',
          style: TextStyles.appBarTitle.copyWith(color: Palette.purple),
        ),
      ],
    );
  }
}
