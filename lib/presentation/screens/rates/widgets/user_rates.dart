import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../application/rates_controller.dart';
import '../../../../infrastracture/handbook/model/rate.dart';

class UserRates extends GetView<RatesController> {
  const UserRates({Key? key}) : super(key: key);

  _rate(RateModel data) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 15,
      ),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.title,
            style: const TextStyle(
              fontFamily: 'SF UI Display',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xff0e3062),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Цена:',
                  style: TextStyle(
                    fontFamily: 'SF UI Display',
                    fontSize: 16,
                    color: Color(0xff0e3062),
                  ),
                ),
                Text(
                  data.price.toString(),
                  style: const TextStyle(
                    fontFamily: 'SF UI Display',
                    fontSize: 16,
                    color: Color(0xff0e3062),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Действует до:',
                style: TextStyle(
                  fontFamily: 'SF UI Display',
                  fontSize: 16,
                  color: Color(0xff0e3062),
                ),
              ),
              Text(
                data.expiredAt,
                style: const TextStyle(
                  fontFamily: 'SF UI Display',
                  fontSize: 16,
                  color: Color(0xff0e3062),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = controller.ratesList.data;
    return Expanded(
      child: Obx(() {
        if (data.isEmpty) {
          return const Center(
            child: Text('No rates'),
          );
        }
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (_, index) => _rate(data[index]),
        );
      }),
    );
  }
}
