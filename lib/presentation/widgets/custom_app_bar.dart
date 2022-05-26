import 'package:flutter/material.dart';

import '../../domain/config/colors.dart';
import '../../domain/config/icons.dart';
import 'app_bar_button.dart';
import 'app_bar_title.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback onTap;
  final bool hasAction;
  final bool isHome;
  final String leading;
  final String? title;

  const CustomAppBar({
    Key? key,
    required this.onTap,
    this.hasAction = false,
    this.leading = AppIcons.drawer,
    this.isHome = false,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Palette.scaffoldBackgorund,
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 15.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppBarButton(
              icon: leading,
              onTap: onTap,
            ),
            AppBarTitle(isHome: isHome, title: title),
            hasAction
                ? AppBarButton(
                    icon: AppIcons.notifications,
                    onTap: () {},
                  )
                : const SizedBox(
                    width: 37.0,
                    height: 37.0,
                  ),
          ],
        ),
      ),
    );
  }
}
