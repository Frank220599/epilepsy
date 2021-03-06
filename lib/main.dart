import 'package:epilepsy/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'conf/colors.dart';

void main() {
  runApp(Epilepsy());
}

class Epilepsy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Palette.scaffoldBackgorund,
        accentColor: Palette.scaffoldBackgorund,
      ),
      home: HomeScreen(),
    );
  }
}
