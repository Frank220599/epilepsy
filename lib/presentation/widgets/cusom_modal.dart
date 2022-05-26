import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/config/colors.dart';
import 'app_button.dart';

class CustomModal extends StatelessWidget {
  final Widget child;
  final double height;
  final VoidCallback onSave;
  final double insetPaddingV;
  final String label;
  final bool isLoading;
  const CustomModal({
    Key? key,
    this.label = 'Сохранить',
    required this.child,
    this.height = 320.0,
    required this.onSave,
    this.insetPaddingV = 134,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
      child: Dialog(
        elevation: 0,
        insetPadding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: insetPaddingV,
        ),
        backgroundColor: Colors.transparent,
        child: Container(
          height: height,
          width: double.infinity,
          padding: const EdgeInsets.only(left: 22, right: 22, top: 23),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: Palette.scaffoldBackgorund,
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
              )
            ],
          ),
          child: Column(children: [
            child,
            const SizedBox(height: 30),
            Row(
              children: [
                Flexible(
                  child: AppButton(
                    marginBottom: 0,
                    onTap: () {
                      Get.back();
                    },
                    label: 'Отмена',
                  ),
                ),
                const SizedBox(width: 20),
                Flexible(
                  child: AppButton(
                    isLoading: isLoading,
                    marginBottom: 0,
                    onTap: onSave,
                    isFilled: true,
                    label: label,
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
