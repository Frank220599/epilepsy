import 'package:flutter/material.dart';

import '../../domain/config/colors.dart';
import '../../domain/config/styles.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final bool isLoading;
  final double width;
  final bool isFilled;
  final double marginBottom;
  final double fontSize;
  final double height;

  const AppButton({
    Key? key,
    required this.onTap,
    required this.label,
    this.isLoading = false,
    this.width = 237,
    this.fontSize = 18,
    this.height = 50,
    this.isFilled = false,
    this.marginBottom = 32,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: !isLoading ? onTap : null,
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.only(
          bottom: marginBottom,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(250.0),
          color: isFilled ? Palette.purple : const Color(0xffeaebf3),
          border: Border.all(
            width: 1.0,
            color: const Color(0xff9f5dd9),
          ),
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
        child: !isLoading
            ? Text(
                label,
                style: TextStyles.drugButton.copyWith(
                  color: isFilled ? Colors.white : TextStyles.drugButton.color,
                  fontSize: fontSize,
                ),
              )
            : SizedBox(
                width: height / 2,
                height: height / 2,
                child: const CircularProgressIndicator(
                  color: Palette.purple,
                  strokeWidth: 2,
                ),
              ),
      ),
    );
  }
}
