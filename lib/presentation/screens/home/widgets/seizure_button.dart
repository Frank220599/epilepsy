import 'package:epilepsy/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeizureButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffeaebf3),
        boxShadow: [
          BoxShadow(
            color: const Color(0x14000000),
            offset: Offset(-5, -5),
            blurRadius: 12,
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () => Get.toNamed(ROUTES.ADD_SEIZURE),
        child: Container(
          height: 64,
          width: double.infinity,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(250.0),
            gradient: LinearGradient(
              begin: Alignment(-1.0, -1.0),
              end: Alignment(1.0, 1.0),
              colors: [const Color(0xffad6ee5), const Color(0xff9749db)],
              stops: [0.0, 1.0],
            ),
            color: const Color(0xffedeef2),
            boxShadow: [
              BoxShadow(
                color: const Color(0x5d7626b9),
                offset: Offset(5, 5),
                blurRadius: 10,
              ),
              BoxShadow(
                color: const Color(0xb2ffffff),
                offset: Offset(-2, -2),
                blurRadius: 3,
              ),
            ],
          ),
          child: Text(
            'seizure'.tr,
            style: TextStyle(
              fontFamily: 'SF UI Display',
              fontSize: 22,
              color: const Color(0xffffffff),
              letterSpacing: 0.006160000026226044,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
