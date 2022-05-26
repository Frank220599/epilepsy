import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../domain/config/colors.dart';
import '../../../../../../domain/config/icons.dart';

class CustomCheckbox extends StatelessWidget {
  final bool isChecked;
  const CustomCheckbox({
    this.isChecked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 19,
      height: 19,
      decoration: BoxDecoration(
        color: Palette.scaffoldBackgorund,
        boxShadow: _applyBoxShadow(),
      ),
      child: isChecked
          ? SvgPicture.asset(
              AppIcons.check,
              fit: BoxFit.scaleDown,
            )
          : SizedBox(),
    );
  }

  _applyBoxShadow() {
    return isChecked
        ? [
            BoxShadow(
              color: const Color(0x3924415d),
              spreadRadius: 1.0,
              blurRadius: 1,
              offset: Offset(-1, -1),
            ),
            BoxShadow(
              color: const Color(0xb2ffffff),
              spreadRadius: 2.0,
              blurRadius: 1,
              offset: Offset(1, 1),
            )
          ]
        : [
            BoxShadow(
              color: const Color(0x3924415d),
              offset: Offset(2, 2),
              blurRadius: 3,
            ),
            BoxShadow(
              color: const Color(0xb2ffffff),
              offset: Offset(-2, -2),
              blurRadius: 3,
            )
          ];
  }
}
