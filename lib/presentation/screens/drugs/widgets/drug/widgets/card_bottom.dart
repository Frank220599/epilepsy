import 'package:epilepsy/config/config.dart';
import 'package:epilepsy/controllers/drug_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DrugsCardBottom extends GetView<DrugController> {
  final drugList;

  const DrugsCardBottom({Key? key, this.drugList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 15.0,
        bottom: 10.0,
        top: 10.0,
        right: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xffd9e0ea),
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            AppIcons.calendar,
            color: Palette.darkBlue,
          ),
          const SizedBox(width: 11.0),
          Text(
            // '22.09.2021 - 22.10.2021',
            (drugList.dateStart ?? '') +
                (drugList.dateEnd != null ? ' - ${drugList.dateEnd}' : ''),
            style: TextStyles.drugCalendar,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              controller.drugDelete(drugList.id);
            },
            child: SvgPicture.asset(
              AppIcons.trash,
              width: 20,
            ),
          ),
        ],
      ),
    );
  }
}
