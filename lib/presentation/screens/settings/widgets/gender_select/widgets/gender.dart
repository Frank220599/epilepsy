import 'package:flutter/material.dart';

import '../../../../../../domain/config/colors.dart';
import '../../../../../../domain/config/styles.dart';

class Gender extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap;
  const Gender({
    required this.title,
    this.isActive = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: isActive ? Palette.purple : Palette.scaffoldBackgorund,
            boxShadow: BoxStyles.boxShadow,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'SF UI Display',
              fontSize: 20,
              color: !isActive ? const Color(0xff0e3062) : Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
