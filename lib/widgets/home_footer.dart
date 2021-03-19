import 'package:epilepsy/conf/colors.dart';
import 'package:flutter/material.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
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
            fontFamily: 'SF-UI-Display',
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
