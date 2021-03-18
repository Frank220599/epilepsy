import 'package:epilepsy/conf/icons.dart';
import 'package:epilepsy/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppBarButton(icon: AppIcons.drawer),
            AppBarTitle(),
            AppBarButton(icon: AppIcons.plus),
          ],
        ),
      ),
    );
  }
}
