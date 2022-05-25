import 'package:epilepsy/config/colors.dart';
import 'package:epilepsy/screens/settings/widgets/language_select_modal/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';

class LanguageItem extends StatelessWidget {
  final String title;
  final bool isChecked;
  final VoidCallback onChange;
  const LanguageItem({
    Key? key,
    required this.title,
    this.isChecked = false,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChange,
      child: Container(
        padding: const EdgeInsets.only(bottom: 10, top: 20),
        decoration: const BoxDecoration(
            border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0xffBDBECC),
          ),
        )),
        child: Row(
          children: [
            CustomCheckbox(
              isChecked: isChecked,
            ),
            const SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 18,
                color: isChecked ? Palette.purple : const Color(0xff0e3062),
              ),
            )
          ],
        ),
      ),
    );
  }
}
