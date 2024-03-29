import 'package:flutter/material.dart';

import 'colors.dart';

abstract class TextStyles {
  static const appBarTitle = TextStyle(
    fontFamily: 'SF-UI-Display',
    color: Palette.darkBlue,
    fontSize: 30.0,
  );

  static const cardData = TextStyle(
    fontFamily: 'SF-UI-Display',
    fontWeight: FontWeight.w300,
    color: Palette.grey,
    fontSize: 12.0,
  );

  static const drugSubTitle = TextStyle(
    fontFamily: 'SF-UI-Display',
    fontWeight: FontWeight.bold,
    color: Palette.drugSubtitle,
    fontSize: 12.0,
  );

  static const newsDate = TextStyle(
    fontFamily: 'SF-UI-Display',
    fontWeight: FontWeight.bold,
    color: Palette.drugSubtitle,
    fontSize: 13.0,
  );

  static const subTitle = TextStyle(
    fontFamily: 'SF-UI-Display',
    fontWeight: FontWeight.bold,
    color: Palette.drugSubtitle,
    fontSize: 14.0,
  );

  static const trainerCardTitle = TextStyle(
    fontFamily: 'SF-UI-Display',
    color: Palette.darkBlue,
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
  );

  static const notChecked = TextStyle(
    fontFamily: 'SF-UI-Display',
    color: Palette.darkBlue,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.1,
    fontSize: 18.0,
  );

  static const checked = TextStyle(
    fontFamily: 'SF-UI-Display',
    color: Palette.purple,
    fontWeight: FontWeight.w400,
    fontSize: 18.0,
    letterSpacing: 0.1,
  );

  static const accordionTitle = TextStyle(
    fontFamily: 'SF-UI-Display',
    color: Palette.darkBlue,
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
  );

  static const accordionText = TextStyle(
    fontFamily: 'SF-UI-Display',
    color: Palette.darkBlue,
    fontWeight: FontWeight.w400,
    height: 1.8,
    fontSize: 14.0,
  );

  static const trainerCardText = TextStyle(
    fontFamily: 'SF-UI-Display',
    fontSize: 14.0,
    color: Palette.trainerCardText,
  );

  static const drugText = TextStyle(
    fontFamily: 'SF-UI-Display',
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: Palette.trainerCardText,
  );

  static const drugCalendar = TextStyle(
    fontFamily: 'SF-UI-Display',
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: Palette.darkBlue,
  );

  static const drugButton = TextStyle(
    fontFamily: 'SF-UI-Display',
    color: Palette.purple,
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
  );

  static const newsButton = TextStyle(
    fontFamily: 'SF-UI-Display',
    color: Palette.purple,
    fontWeight: FontWeight.bold,
    fontSize: 13.0,
  );

  static const drawerText = TextStyle(
    fontFamily: 'SF-UI-Display',
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
    color: Palette.drawerText,
  );

  static const newsText = TextStyle(
    fontFamily: 'SF-UI-Display',
    color: Palette.darkBlue,
    fontWeight: FontWeight.w600,
    fontSize: 15.0,
  );

  static const dialogCancel = TextStyle(
    fontFamily: 'SF-UI-Display',
    color: Palette.purple,
    fontWeight: FontWeight.bold,
    fontSize: 17.0,
  );

  static const dialog = TextStyle(
    fontFamily: 'SF-UI-Display',
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 17.0,
  );
}

class BoxStyles {
  static const boxShadow = [
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
  static const boxInnerShadow = [
    BoxShadow(
      color: const Color(0x3924415d),
      spreadRadius: 2.0,
      blurRadius: 1,
      offset: Offset(-1, -1),
    ),
    BoxShadow(
      color: const Color(0xb2ffffff),
      spreadRadius: 2.0,
      blurRadius: 1,
      offset: Offset(1, 1),
    )
  ];
}
