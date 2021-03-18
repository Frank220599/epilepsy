import 'package:epilepsy/conf/colors.dart';
import 'package:epilepsy/conf/icons.dart';
import 'package:epilepsy/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(GetSize.width, 100.0),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 37.0,
                  height: 37.0,
                  decoration: BoxDecoration(
                    color: Palette.scaffoldBackgorund,
                    borderRadius: BorderRadius.circular(14.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87.withOpacity(.2),
                        blurRadius: 3,
                        offset: Offset(2, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    AppIcons.drawer,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Text(
                  'CEpi',
                  style: const TextStyle(),
                ),
                Container(
                  width: 37.0,
                  height: 37.0,
                  decoration: BoxDecoration(
                    color: Palette.scaffoldBackgorund,
                    borderRadius: BorderRadius.circular(14.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87.withOpacity(.2),
                        blurRadius: 3,
                        offset: Offset(2, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    AppIcons.plus,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
