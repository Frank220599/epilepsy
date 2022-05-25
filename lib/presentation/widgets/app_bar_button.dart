import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarButton extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;

  const AppBarButton({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 37.0,
        height: 37.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xffeaebf3),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3924415d),
              offset: Offset(2, 2),
              blurRadius: 3,
            ),
            BoxShadow(
              color: Color(0xb2ffffff),
              offset: Offset(-2, -2),
              blurRadius: 3,
            ),
          ],
        ),
        child: SvgPicture.asset(
          icon,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
