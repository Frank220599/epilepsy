import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../domain/config/colors.dart';
import '../../domain/config/icons.dart';
import '../../domain/config/styles.dart';

class CustomListTile extends StatelessWidget {
  final String leading;
  final String? subTitle;
  final String title;
  final VoidCallback onTap;

  const CustomListTile({
    Key? key,
    required this.onTap,
    required this.leading,
    this.subTitle,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18.0),
        margin: const EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
          color: Palette.scaffoldBackgorund,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: BoxStyles.boxShadow,
        ),
        child: Row(
          children: <Widget>[
            SvgPicture.asset(leading),
            const SizedBox(width: 11.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    subTitle ?? '',
                    style: TextStyles.subTitle,
                  ),
                  Text(
                    title,
                    style: TextStyles.accordionTitle,
                  ),
                ],
              ),
            ),
            SvgPicture.asset(AppIcons.right),
          ],
        ),
      ),
    );
  }
}
