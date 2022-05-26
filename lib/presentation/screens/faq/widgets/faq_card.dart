import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart' show parse;

import '../../../../domain/config/colors.dart';
import '../../../../domain/config/styles.dart';
import '../../../../domain/utils/epilepsy_icons.dart';

class FAQCard extends StatelessWidget {
  final data;
  const FAQCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var answer = parse(data.answer);

    return ExpandablePanel(
      theme: const ExpandableThemeData(
        hasIcon: false,
      ),
      header: Container(
        clipBehavior: Clip.none,
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xffeaebf3),
          boxShadow: BoxStyles.boxShadow,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                data.question,
                style: TextStyles.accordionTitle,
              ),
            ),
            ExpandableIcon(
              theme: const ExpandableThemeData(
                expandIcon: EpilepsyIcons.right_open,
                collapseIcon: EpilepsyIcons.down_open,
                iconSize: 18.0,
                iconColor: Palette.accordionIcon,
              ),
            )
          ],
        ),
      ),
      collapsed: const SizedBox(),
      expanded: Container(
        margin: const EdgeInsets.only(left: 23, right: 23, bottom: 10),
        padding: const EdgeInsets.all(12.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(6),
            bottomRight: Radius.circular(6),
          ),
          color: Palette.scaffoldBackgorund,
          boxShadow: [
            BoxShadow(
              color: Color(0x3924415d),
              spreadRadius: 1.0,
              blurRadius: 1,
              offset: Offset(-1, -1),
            ),
            BoxShadow(
              color: Color(0xb2ffffff),
              spreadRadius: 2.0,
              blurRadius: 1,
              offset: Offset(1, 1),
            )
          ],
        ),
        child: Text(
          answer.body?.text ?? '',
          style: TextStyles.accordionText,
          softWrap: true,
        ),
      ),
    );
  }
}
