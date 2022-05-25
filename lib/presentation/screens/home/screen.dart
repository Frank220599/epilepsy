import 'package:epilepsy/config/config.dart';
import 'package:epilepsy/constants/routes.dart';
import 'package:epilepsy/controllers/handbook_controller.dart';
import 'package:epilepsy/controllers/seizure_controller.dart';
import 'package:epilepsy/screens/home/widgets/seizure_card.dart';
import 'package:epilepsy/utils/sizes.dart';
import 'package:epilepsy/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final seizuresController = Get.put(SeizureController());
  final handbookController = Get.put(HandBookController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(GetSize.width, 100.0),
        child: CustomAppBar(
          onTap: () => ZoomDrawer.of(context)?.open(),
          hasAction: true,
          isHome: true,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SeizureTimer(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 23,
              horizontal: 20,
            ),
            child: Text(
              'latestSeizures'.tr,
              style: const TextStyle(
                fontFamily: 'SF-UI-Display',
                color: Palette.darkBlue,
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              final lastThree = seizuresController.lastThree;
              return ListView.separated(
                itemCount: lastThree.data.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10.0),
                itemBuilder: (context, index) {
                  final item = lastThree.data[index];
                  return GestureDetector(
                    onTap: () {
                      if (!ZoomDrawer.of(context)!.isOpen()) {
                        Get.toNamed(
                          ROUTES.ADD_SEIZURE,
                          arguments: item,
                        );
                        return;
                      }
                      ZoomDrawer.of(context)?.close();
                    },
                    child: SeizureCard(
                      type: item.type,
                      reason: item.reason,
                      date: item.date.split(' '),
                      duration: item.duration,
                      place: item.place,
                      activity: item.activity,
                    ),
                  );
                },
              );
            }),
          ),
          SeizureButton(),
        ],
      ),
    );
  }
}
