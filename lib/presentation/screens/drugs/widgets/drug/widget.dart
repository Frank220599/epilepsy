import 'package:epilepsy/presentation/screens/drugs/widgets/drug/widgets/card_bottom.dart';
import 'package:epilepsy/presentation/screens/drugs/widgets/drug/widgets/card_top.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../domain/constants/routes.dart';

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
