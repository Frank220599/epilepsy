import 'package:epilepsy/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DrugsCardTop extends StatelessWidget {
  final drugList;
  const DrugsCardTop({
    this.drugList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0).copyWith(right: 0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(AppIcons.energy),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (drugList.title != null)
                    Text(
                      drugList.title,
                      style: TextStyles.trainerCardTitle,
                    ),
                  if (drugList.dosage != null)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'dosage'.tr,
                          style: TextStyles.drugSubTitle,
                        ),
                        Container(
                          width: 300.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  drugList.dosage,
                                  style: TextStyles.drugText,
                                ),
                              ),
                              SvgPicture.asset(AppIcons.right),
                            ],
                          ),
                        ),
                      ],
                    )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
