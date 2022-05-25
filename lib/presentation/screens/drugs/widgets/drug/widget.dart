import 'package:epilepsy/constants/routes.dart';
import 'package:epilepsy/screens/drugs/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrugsCard extends StatelessWidget {
  final drugList;
  const DrugsCard({
    Key? key,
    this.drugList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(
        ROUTES.ADD_DRUG,
        arguments: drugList,
      ),
      child: Container(
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
        child: Column(
          children: [
            DrugsCardTop(
              drugList: drugList,
            ),
            DrugsCardBottom(
              drugList: drugList,
            ),
          ],
        ),
      ),
    );
  }
}
