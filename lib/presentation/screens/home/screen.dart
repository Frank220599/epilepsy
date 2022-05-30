import 'package:epilepsy/presentation/screens/home/widgets/seizure_button.dart';
import 'package:epilepsy/presentation/screens/home/widgets/seizure_card.dart';
import 'package:epilepsy/presentation/screens/home/widgets/seizure_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

import '../../../application/handbook_controller.dart';
import '../../../application/seizure_controller.dart';
import '../../../domain/config/colors.dart';
import '../../../domain/constants/routes.dart';
import '../../../domain/utils/sizes.dart';
import '../../widgets/custom_app_bar.dart';

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
                      type: item.type ?? 'Не указано',
                      reason: item.reason ?? 'Не указано',
                      date: item.date!.split(' '),
                      duration: item.duration ?? 'Не указано',
                      place: item.place ?? 'Не указано',
                      activity: item.activity ?? 'Не указано',
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
