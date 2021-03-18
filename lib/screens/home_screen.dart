import 'package:epilepsy/conf/colors.dart';
import 'package:epilepsy/utils/sizes.dart';
import 'package:flutter/material.dart';

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
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(3, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.menu,
                    color: Palette.iconColor,
                  ),
                ),
                Text(
                  'CEpi',
                  style: const TextStyle(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
